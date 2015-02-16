/*
NEXT UP: 
 - Show exceptions for module js files... how?
 - A viewer for work data

VISION:
 - Max patches in the package changed less often (major revisions)
 - JS code or data for vrious functions can change more often (minor revisions)
 
**********************************************
**********************************************
A TREE FOR MUSICAL INFORMATION... BUILDING SCORES, SOUND WORLDS
... how can this be more than temporal?
... how can structure be magical?
... ... exploring ... ... play

*/



var jupe = {};

var module;

var interface_instance;

var module_instance;

var myJsPatcher = this;

// max/msp built in function to handle any message:
function anything() {
	var hasFunction = false; // assume guilty until proven innocent
	if (jupe.environment && module) {
		if (module_instance) {
			// first, attempt to call the instance-specific function
			if (module_instance[messagename]) {
				module_instance[messagename].apply(module_instance, arguments);
				hasFunction = true;
			}
		}
		if (!hasFunction && module[messagename]) {
			//if no instance-specific version, try calling the general function
			module[messagename].apply(module, arguments);	
			hasFunction = true;
		}
 		if (!hasFunction) jupe.environment.alert(messagename + " function not defined for module " + module.moduleName, "error");
	}
}

function createworkdata(workRoot) {
	jupe.environment.createWorkData(workRoot);
}

function reloadmodule() {
	var _moduleName = module.moduleName;
	jupe[module.moduleName] = null;
	module = null;
	module_instance = null;
	loadmodule(_moduleName);
}

function load(workName) {
	jupe = new Jupe({
			workName: workName
		});
	
	interface_instance = new JupeInterfaceInstance({
			jsPatcher: myJsPatcher
		});

	if (!jupe.environment.workDataExists)  {
		interface_instance.sendOut(["forjupe","createworkdata"]); // tell interface to create new work data
	}

}

function loadmodule(moduleName) {

	module = jupe[moduleName];

	if (!module) {
		// if module object null then load it
		_loadModule(moduleName);
		module = jupe[moduleName];
	}

	if (module) {
		if (module.ModuleInstance) module_instance = new module.ModuleInstance(interface_instance);
	}
}


function _loadModule(moduleName) {
	// loads a module and returns the object

	interface_instance.sendOut(["forjupe", "loadmodule", jupe.environment.workName, "jupe.module." + moduleName + ".js"]);
	var myModule = jupe[moduleName];

	if (!myModule) {
		//  if module object still null, then there's a problem
		jupe.environment.alert("Attempting to start, but module '" + moduleName + "' could not be loaded.", "error");
	} else {
		// otherwise get requried modules... and start the module:
		if (myModule.requires) {
			var i = myModule.requires.length;
			while (i--) {
				_loadModule(myModule.requires[i]);
			}
		}
		if (myModule.start) myModule.start();
	}
}


	// POSSIBLY... inheritance could work something like this...
	/*
		myJupe.loadModule = function(moduleName, myLibraryNames, myConstructor, moduleExtensions) {

			if (!myJupe._modules[moduleName]) {

				// inherit from myJupe.Module

				// would the following be needed for any reason??
				//myJupe.Module.call(this, myModuleName, myLibraryNames);

				myJupe.alert_note("Loading module: " + moduleName);

				myConstructor.prototype = new myJupe.Module(moduleName, myLibraryNames);

				// correct the constructor pointer... not sure why this is necessary
				myConstructor.prototype.constructor = myConstructor;

				(moduleExtensions)(myConstructor); // this calls the moduleExtensions function, passing this constructor. 

				myJupe._modules[moduleName] = new myConstructor;
			}
		};

	*/
