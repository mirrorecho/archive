// function to load module:
function loadmodule(workName) {

	var jupe = new Jupe({workName: workName});

	jupe.din = {
		
		moduleName: "din",

		requires: ["data"],


		ModuleInstance: function(instance) {
		}

	}
}