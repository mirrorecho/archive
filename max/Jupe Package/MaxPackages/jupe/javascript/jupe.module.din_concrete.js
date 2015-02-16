

// function to load module:
function loadmodule(workName) {

	var jupe = new Jupe({workName: workName});

	jupe.din_concrete = {
		
		moduleName: "din_concrete",

		requires: ["din"],


		ModuleInstance: function(instance) {


		}

	}
}




/*
function start_concrete(concreteName) {
	jupe.concreteSamples = new jupe._concrete_type(concreteName);
}


function stop_concrete(concreteName) {
	jupe.concreteSamples.stop();
}

var myJupeGlobal = new Jupe(this.patcher);
var myDin = myJupeGlobal.module("jupe.din");

var myConcrete = new myDin.Concrete(concreteName);

jupe._concrete_type = function(concreteName) {

	this.name = concreteName;

	this.polySamples = new PolyBuffer(concreteName);

	this.open = function() {
		this.polySamples.open();
	}

	this.stop = function() {
		this.polySamples.freepeer();
	}

	this.load = function() {

	}

	this.save = function() {
		
	}

}





*/