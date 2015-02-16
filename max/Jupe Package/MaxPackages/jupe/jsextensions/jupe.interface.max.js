function Jupe(jupeProperties) {
	jupe = JupeGlobalObject("jupe." + jupeProperties.workName);
	if (!jupe.environment) jupe.environment = new JupeInterfaceEnvironment(jupeProperties);
	return jupe;
}


function JupeGlobalObject(objectName) {
	return new Global(objectName);
};


function JupeInterfaceInstance(instanceProperties) {
	// sends data out through max outlet
	this.sendOut = function(sendObject) {
		instanceProperties.jsPatcher.outlet(0, sendObject);
	};

}

function JupeInterfaceEnvironment(jupeProperties) {
	
	var myInterface = this;

	this.workName = jupeProperties.workName;

	this.createWorkData = function(workRoot) {
		myInterface.workRoot = workRoot;
		myInterface.alert("Work folder: " + myInterface.workRoot);
		myInterface.writeFile(workRoot + "/data/jupe.data." + jupeProperties.workName + ".work.json", "{}");
	};

	// alerts msgs:
	this.alert = function(msg, alertType) {
		if (alertType=="error") {
			post("JUPE ERROR", msg);
			post();
		} else if (alertType=="warning") {
			post("JUPE WARNING", msg);
			post();
		} else {
			post("JUPE", msg);
			post();
		}
	};

	// reads text file
	this.readFile = function(filePath, ignoreNotFound) {
		myString = "";
		maxChars = 2000;
		var f = new File(filePath,"read");
		f.open();
		if (f.isopen) {
			while(f.position<f.eof) {
				myString += f.readstring(maxChars);
			}
			f.close();
		} else {
			if (!ignoreNotFound) myInterface.alert("Error reading file: " + filePath);
		}
		return myString;
	};

	// writes text file
	this.writeFile = function(filePath, content) {
		maxChars = 2000;
		var f = new File(filePath,"write", "TEXT");
		if (f.isopen) {
			f.writestring(content);
			f.close();
			myInterface.alert("Saved file: " + filePath);
		} else {
			myInterface.alert("Error reading file: " + filePath);
		}
	};

	this.fileExists = function(filePath) {
		var f = new File(filePath, "read");
		if (f.isopen) {	//if succeed in opening file
			f.close();
			return true;
		} else { //file doesn’t exist
			f.close(); //anal retentively close file
			return false;
		}
	}

	this.getFileFolderPath = function(fileName, inSubFolder) {
		// Gets the parent folder for a given file name within the max search path (with optional sub-folder parameter)
		var filePath = "";
		var f = new File(fileName, "read");
		if (f.isopen) {	//if succeed in opening file
			filePath = f.foldername;
			if (inSubFolder) {
				var i = filePath.indexOf("/" + inSubFolder);
				filePath = filePath.slice(0, i) + "/";
			}
			f.close();
		} else f.close(); //file doesn’t exist, but anal retentively close file

		return filePath;
	}

	myInterface.jupeRoot = myInterface.getFileFolderPath("jupe.data.eco.json", "data");

	myInterface.alert("Jupe folder: " + myInterface.jupeRoot);

	myInterface.workRoot = myInterface.getFileFolderPath("jupe.data." + jupeProperties.workName + ".work.json", "data");

	myInterface.workDataExists = (myInterface.workRoot!="") ? true : false;

	if (myInterface.workDataExists) myInterface.alert("Work folder: " + myInterface.workRoot);

	// _________________________________________________________________________________________________________________________________________________

	// INTERFACE WRAPPER AROUND JSON DATA:
	this.Store = function(storeProperties) {

		var myStore = this;
		
		myStore.name = storeProperties.storeName;
		
		myStore.longName = storeProperties.storeNamespace + "." + storeProperties.storeName;
		
		myStore._fileName = myStore.longName + ".json";

		myStore._dataRoot = ((storeProperties.isWorkData) ? myInterface.workRoot : myInterface.jupeRoot) + "data/";

		myStore._filePath = myStore._dataRoot + myStore._fileName;

		myStore._dict = new Dict(myStore.longName);

		// needed? or can query do everything?
		myStore.contains = function(name) {
			return myStore._dict.contains(name);
		};

		myStore.get = function(name) {
			var retValue = myStore._dict.get(name);
			if (retValue) return retValue;
			else return "undefined";
		};

		myStore.remove = function(name) {
			if (myStore.contains(name)) myStore._dict.remove(name);
		};

		myStore.set = function(name, value) {
			if (value) myStore._dict.set(name, value);
			else {
				myInterface.alert("new dict: " + name);
				myStore._dict.set(name, new Dict(name));
			}
		};

		// anything here?
		/*
		myStore.query = function() {
		};
		*/

		myStore.exists = function() {
			return myInterface.fileExists(myStore._filePath);
		};

		myStore.save = function() {
			myStore._dict.export_json(myStore._filePath);
			myInterface.alert("Saved: " + myStore._filePath);
		};

		myStore.load = function() {
			myStore._dict.import_json(myStore._filePath);
			myInterface.alert("Loaded: " + myStore._filePath);
		};

		myStore.loadOrCreate = function() {
			if (myStore.exists()) myStore.load();
			else myStore.save();
		};

		myStore.getValueFileName = function(name, fileExtension) {
			if (!fileExtension) fileExtension = "txt";
			return myStore._dataRoot + myStore.longName + "." + name.replace(/::/g, ".") + "." + fileExtension;
		};

		myStore.loadValue = function(name, fileExtension) {
			myStore.set(name, myInterface.readFile(myStore.getValueFileName(name, fileExtension), true));
		};

		myStore.saveValue = function(name, fileExtension) {
			myInterface.writeFile(myStore.getValueFileName(name, fileExtension), myStore.get(name));
		};

		// needed?
		myStore.valueFileExists = function(name, fileExtension) {
			return myInterface.fileExists(myStore.getValueFileName(name, fileExtension));
		};
	};

}

