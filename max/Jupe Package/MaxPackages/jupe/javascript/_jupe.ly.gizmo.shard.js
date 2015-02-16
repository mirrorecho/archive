
function bang() {
	var boxCoords = this.patcher.box.rect;
	var hInches = (boxCoords[2] - boxCoords[0]) / 100; // horizontal inches
	var vInches = (boxCoords[3] - boxCoords[1]) / 100; // vertical inches
	post(hInches);
	post();
	post(vInches);
	post();
}