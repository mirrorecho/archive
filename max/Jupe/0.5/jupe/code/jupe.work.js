function set_workname(workname) {

	// a hacky way to store the workname so that it can be accessed through js in subpatchers:
	if (this.patcher.box) this.patcher.box.varname = 'jupe.work.'+ workname;
}