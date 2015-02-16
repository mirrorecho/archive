
/* ________________________________________________________________________________________________________ */
// Jupe environment stuff to initialize at the top of every module:


var jupe = {};

// function load needed for every module...
function loadmodule(workName) {
	jupe = new Jupe({workName: workName});
	jupe.data = new jupeDataModule(workName);
}

function jupeDataModule(workName) {

	var module = this;
	
	module.moduleName = "data";

	//module.inherits = null; // name of module to inherit from

	//module.requires = []; // names of modules that module module requires

	//module.isLoaded = true; // necessary?

	module._stores = {};

	module.storeNames = ["eco", "ego", "work"]; // data stores that the data module loads by default

	module.set = function(storeName, name, value) {
		module._getStore(storeName).set(name, value);
		jupe.environment.alert(name + ": " + value);
	};

	module.start = function() {
		module.loadall();	
	}

	// adds (or re-adds) a store to the _store object and loads (or re-laods) the store data:
	module.load = function(storeName) {
		if (storeName=="eco" || storeName=="ego") {
			module._stores[storeName] = new jupe.environment.Store({
				isWorkData : true,
				storeNamespace : "jupe." + module.moduleName,
				storeName : storeName
			});
			module._stores[storeName].load();
		} else {
			module._stores[storeName] = new jupe.environment.Store({
				isWorkData : false,
				storeNamespace : "jupe." + module.moduleName + "." + workName,
				storeName : storeName
			});
			module._stores[storeName].loadOrCreate();
		}
	};

	module.loadall = function() {
	    var i = module.storeNames.length;
	    while (i--) {
	       module.load(module.storeNames[i]);
	    }
	};

	module.remove = function(storeName, name) {
		module._getStore(storeName).remove(name);
	};

	module.save = function(storeName) {
		if (storeName=="eco") jupe.alert("Saving eco data through max not allowed.");
		else module._getStore(storeName).save();
	};

	module.get = function(storeName, name) {
		return module._getStore(storeName).get(name);
	}

	this.contains = function(storeName, name) {
		return module._getStore(storeName).contains(name);
	}

	// start function is always called by jupe environment at startup (if exists)

	// returns an existing store if it already exists, otherwise loads it and returns the newly-loaded libary:
	module._getStore = function(storeName) {
		if (!module._stores[storeName]) module.load(storeName);
		return module._stores[storeName];
	};

	// -------------------------------------------------------------------------------------------------------
	// any functions that require a reference to the instance of the object using this module go in _getInstance:
	module.ModuleInstance = function(instance) {

		this.modulename = function(purpose) {
			if (!purpose) purpose="fornothing";
			instance.sendOut([purpose, module.moduleName]);
		}

		this.get = function(storeName, name, purpose) {
			if (!purpose) purpose="fornothing";
			instance.sendOut([purpose, storeName, name, module.get(storeName, name)]);
		};

		this.contains = function(storeName, name, purpose) {
			if (!purpose) purpose="fornothing"; 
			instance.sendOut([purpose, storeName, name, module.contains(storeName, name)]);
		}

	}



	// QUESTION...
	// should jupe just return the store object (like here?)
	// or should it encapsulate it?



}

/* ________________________________________________________________________________________________________ */
/* ________________________________________________________________________________________________________ */

/*

	myPrototype.load_orcreate = function(libraryname, version) {
		if (!version) version = this.getLibrary("eco").get("version");
		this.getLibrary(libraryname).set("version", version);
		this.getLibrary(libraryname).loadOrCreate();
	}

	myPrototype.get_valuefilename = function(libraryname, name, fileExtension, purpose) {
		if (!purpose) purpose="fornothing";
		myJupeEnvironment.sendOut([purpose, libraryname, name, this.getLibrary(libraryname).getValueFileName(name, fileExtension)]);
	}

	myPrototype.load_value = function(storename, name, fileExtension) {
		this.getLibrary(libraryname).loadValue(name, fileExtension);
	}

	myPrototype.save_value = function(storename, name, fileExtension, clear) {
		this.getLibrary(libraryname).saveValue(name, fileExtension);
		if (clear) this.getLibrary(libraryname).remove(name);	
	}

	myPrototype.save_ifnew_value = function(storename, name, fileExtension, defaultValue) {
		if (defaultValue) myJupe.getLibrary(libraryname).set(name, defaultValue);
		if (!myJupe.getLibrary(libraryname).valueFileExists(name, fileExtension)) myJupe.getLibrary(libraryname).saveValue(name, fileExtension);
	}


*/
