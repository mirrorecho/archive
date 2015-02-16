/*
NEXT UP: 
 - 
 
VISION:
 - Tools to HELP create lilypond scores.

  
**********************************************
**********************************************
A TREE FOR MUSICAL INFORMATION... BUILDING SCORES, SOUND WORLDS
... how can this be more than temporal?
... how can structure be magical?
... ... exploring ... ... play

*/


var jupe = {};

// function load needed for every module...
function loadmodule(workName) {
	jupe = new Jupe({workName: workName});
	jupe.ly = new jupeLyModule(workName);
}

function jupeLyModule(workName) {

	var module = this;
	
	module.moduleName = "ly";

	module.requires = ["data"]; // names of modules that module module requires


	// -------------------------------------------------------------------------------------------------------
	// any functions that require a reference to the instance of the object using this module go in ModuleInstance:
	module.ModuleInstance = function(instance) {


	}

}

