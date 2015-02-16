
inlets = 1;
outlets = 3;

function get(libraryname, name, purpose) {
	if (purpose) outlet(1, [purpose, libraryname, name, jupe.library(libraryname).get(name)]);
	else outlet(0, [libraryname, name, jupe.library(libraryname).get(name)]);
}


function set(libraryname, name, value) {
	jupe.library(libraryname).set(name, value);
}

function save(libraryname) {
	if (libraryname=="eco") alert_error("Saving eco data through max not allowed.");
	else if (libraryname=="ego") jupe.library("ego").save(jupe.jupeRoot);
	else jupe.library(libraryname).save();
}

function load(libraryname) {
	jupe.library(libraryname).load();
}

function load_orcreate(libraryname, version) {
	if (!version) version = jupe.library("eco").get("version");
	jupe.library(libraryname).set("version", version);
	jupe.library(libraryname).loadOrCreate();
}

function start() {
	jupe.startup();
}

function restart() {
	// TO DO... how to release dicts????
	jupe.startup(true);
}

function alert_error(msg) {
	post("JUPE ERROR", msg);
	post();
}

function alert_note(msg) {
	post("JUPE", msg);
	post();
}

function alert_warning(msg) {
	post("JUPE WARNING", msg);
	post();
}

/* ________________________________________________________________________________________________________ */
/* ________________________________________________________________________________________________________ */

// HERE'S JUPE!


var jupe = {};

jupe.workName = "";
jupe._libraries = {};
jupe._myPatcher = this.patcher;

jupe.isOn = function() {
	if (jupe.workName =="") return false;
	else if (!jupe.library("eco").contains("version")) return false;
	else if (!jupe.library("ego").contains("version")) return false;
	else if (!jupe.library("work").contains("version")) return false;
	else return true;
}

jupe._init_workName = function(patcherman) {
	var defaultName = "jupework";
	if (jupe._myPatcher.parentpatcher) jupe._set_ancestorWorkName(jupe._myPatcher.parentpatcher);
	if (jupe.workName=="") {
		alert_warning("Work name could not be determined. Defaulting to: " + defaultName);
		jupe.workName = defaultName;
	}

}

jupe._get_jupeRoot = function() {
	// NOTE: only works with max default project/file structure.
	var ecoFilePath = "";
	var f = new File("jupe.eco.json", "read");
	if (f.isopen) {	//if succeed in opening file
		ecoFilePath = f.foldername;
		var i = ecoFilePath.indexOf("/data");
		return ecoFilePath.slice(0, i) + "/";
		f.close();
	} else { //file doesn’t exist
		f.close(); //anal retentively close file
		alert_error("Could not find jupe.eco.json!");
	}
}

jupe._get_workRoot = function() {
	// NOTE: only works with max default project/file structure.
	var workPatcher = jupe._get_ancestorWorkPatcher(jupe._myPatcher);
	var workFilePath = workPatcher.filepath;
	var i = workFilePath.indexOf("/patchers");
	return  workFilePath.slice(0, i) + "/";
}

jupe._is_workObject = function(objectman) {
	var retValue = 0; // assume guilty until proven innocent
	if (objectman.maxclass=="patcher") {
		if (objectman.subpatcher()) {
			var patcherFilePath = objectman.subpatcher().filepath.toLowerCase();
			var workPatcherFileName = "jupe.work.maxpat";
			if (patcherFilePath.indexOf(workPatcherFileName, patcherFilePath.length - workPatcherFileName.length) !== -1) retValue = 1;
		}
	}
	//alert_note(retValue);
	return retValue;
}

jupe._set_workName = function(objectman) {
	var bangSetName = objectman.subpatcher().getnamed("jupe_set_workname")
	bangSetName.message("bang");
	var workLongName = objectman.varname;
	jupe.workName = workLongName.slice(10);
}

jupe._get_ancestorWorkPatcher = function(patcherman) {
	var workObject = patcherman.getnamed("jupe.work");
	if (workObject) {
		return patcherman;
	} else {
		if (patcherman.parentpatcher) return jupe._get_ancestorWorkPatcher(patcherman.parentpatcher);
		else return patcherman;
	}
}

jupe._set_ancestorWorkName = function(patcherman) {
	jupe.workName = "";
	patcherman.applyif(jupe._set_workName, jupe._is_workObject); // not sure if applyif can return a value...
	if (jupe.workName=="" && patcherman.parentpatcher) jupe._set_ancestorWorkName(patcherman.parentpatcher);
}

jupe._library_type = function(libraryName) {
	
	this.name = libraryName;

	this.longName = "jupe." + libraryName + "." + jupe.workName;

	this.dict = new Dict(this.longName);

	this.fileExists = function(folder) {
		if (!folder) folder = "";

		var f = new File(folder + this.longName + ".json", "read");
		if (f.isopen) {	//if succeed in opening file
			f.close();
			return true;
		} else { //file doesn’t exist
			f.close(); //anal retentively close file
			return false;
		}
	}

	this.contains = function(name) {
		return this.dict.contains(name);
	}

	this.get = function(name) {
		var retValue = this.dict.get(name);
		if (retValue) return retValue;
		else return "undefined";
	}

	this.set = function(name, value) {
		this.dict.set(name, value);
	}

	this.save = function(folder) {
		var filePath = "";

		if (!folder && jupe.library("eco").contains("workroot")) folder = jupe.library("eco").get("workroot") + "data/";
		
		if (folder) {
			if (this.name=="ego") filePath = folder + "jupe.ego.json";
			else filePath = folder + this.longName + ".json";
			this.dict.export_json(filePath);
			alert_note("Saved: " + filePath);			
		}
		else alert_error("Trying to save file " + this.longName + " to default work root, but Jupe not properly started.");
	}

	this.load = function(folder) {
		var filePath = "";
		if (!folder) folder = "";
		if (this.name=="eco" || this.name=="ego") filePath = folder + "jupe." + this.name + ".json"; 
		else filePath = folder + this.longName + ".json";
		this.dict.import_json(filePath);
		alert_note("Loaded: " + filePath);
	}

	this.loadOrCreate = function() {
		if (this.fileExists()) this.load();
		else {
			if (!this.contains("version")) this.set("version", 0.1);
			this.save();
		}
	}

}

jupe.library = function(libraryName) {
	if (!jupe._libraries[libraryName]) jupe._libraries[libraryName] = new jupe._library_type(libraryName);
	return jupe._libraries[libraryName];
}

jupe.startup = function(restart) {

	if (jupe.workName=="" || restart) jupe._init_workName();

	if (!jupe.isOn() || restart) {

		alert_note("Loading Jupe!");

		alert_note("Jupe work name: " + jupe.workName);

		var jupeRoot = jupe._get_jupeRoot();
		var workRoot = jupe._get_workRoot();

		jupe.library("eco").load(jupeRoot + "data/");
		jupe.library("eco").set("juperoot", jupeRoot);
		jupe.library("eco").set("workroot", workRoot);

		jupe.library("ego").load(jupeRoot + "data/");

		jupe.library("work").set("name", jupe.workName); // in case we need to create it for the first time
		jupe.library("work").loadOrCreate();
	}
}


