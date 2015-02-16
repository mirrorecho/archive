var _workname = "";
var _workroot = "";

function save_ego() {

}

function save_work() {
	
}


function get_workroot() {
	outlet(0, ["workroot", _get_workroot()]);
}

function get_dataname() {
	outlet(0, ["dataname", "jupe.work." + _get_workname()]);
}

function get_workname() {
	outlet(0, ["workname", _get_workname()]);
}

function set_workname(workname) {

	// a hacky way to store the workname so that it can be accessed through js in subpatchers:
	this.patcher.box.varname = 'jupe.work'
	this.patcher.wind.title = workname;
}

function _get_workroot() {
	// NOTE: only works with max default project/file structure.
	if (_workroot=="") {
		var workpatcher = _get_ancestor_workpatcher(this.patcher);
		var workfilepath = parent.filepath;
		var i = workfilepath.indexOf("/patchers/");
		_workroot =  workfilepath.slice(0, i) + "/";
	}
	return _workroot;
}

function _get_workname() {
	if (_workname=="") _workname = _get_ancestor_workname(this.patcher);
	return _workname;
}

function _get_ancestor_workname(patcherman) {
	var workobject = patcherman.getnamed("jupe.work");
	if (workobject) {
		var workpatcher = workobject.subpatcher();
		if (workpatcher) return workpatcher.wind.title;
		else return "jupework";
	} else {
		if (patcherman.parentpatcher) return _get_ancestor_workname(patcherman.parentpatcher);
		else return "jupework";
	}
}

function _get_ancestor_workpatcher(patcherman) {
	var workobject = patcherman.getnamed("jupe.work");
	if (workobject) {
		return patcherman;
	} else {
		if (patcherman.parentpatcher) return _get_ancestor_workname(patcherman.parentpatcher);
		else return patcherman;
	}
}