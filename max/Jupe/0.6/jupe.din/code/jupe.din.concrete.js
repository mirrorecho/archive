
function start_concrete(concreteName) {
	jupe.concreteSamples = new jupe._concrete_type(concreteName);
}


function stop_concrete(concreteName) {
	jupe.concreteSamples.stop();
}

var jupe = {}

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



