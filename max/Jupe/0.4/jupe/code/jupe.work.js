function set_workname(workname) {

	// a hacky way to store the workname so that it can be accessed through js in subpatchers:
	this.patcher.box.varname = 'jupe.work'
	this.patcher.wind.title = workname;
}