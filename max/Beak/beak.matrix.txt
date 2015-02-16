
// TO DO... ability to freeze columns at the beginning.

inlets = 2;
outlets = 4;

var beak = {};

// no errors... just getting better

beak.matrix = function() {
	// private static stuff
	
	beak.isAlive = false;

	// TO DO.... COMPACT OF THESE ARRAYS INTO AN ARRAY OF OBJECTS:
	this.values = [ [] ];

	this.scores = [ [] ];

	this.locked = [ [] ];

	this.slurs = [ [] ]; // use to store slur markings per LilyPond markup: "("" for start slur and ")" for end slur

	this.noGos = 0;

	this.beakCounter = 0;

	this.beakScore = 0;

	this.noteSpacing = 500;

	this.minValues = [ [] ];

	this.maxValues = [ [] ];

	// this is silly but helpful for outputing stuff in LY format (which doesn't like #s in variables!)
	this.numberNames = 
		['Zero', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 
		'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen',
		'Twenty', 'TwentyOne', 'TwentyTwo', 'TwentyThree', 'TwentyFour', 'TwentyFive', 'TwentySix', 'TwentySeven', 'TwentyEight', 'TwentyNine',
		'Thirty', 'ThirtyOne', 'ThirtyTwo', 'ThirtyThree', 'ThirtyFour', 'ThirtyFive', 'ThirtySix', 'ThirtySeven', 'ThirtyEight', 'ThirtyNine',
		'Fourty', 'FourtyOne', 'FourtyTwo', 'FourtyThree', 'FourtyFour', 'FourtyFive', 'FourtySix', 'FourtySeven', 'FourtyEight', 'FourtyNine'];

	this.updateScore = function(scoringFunctions) {
		this.beakScore = this.howWonderful(scoringFunctions);
	}

	this.loadValues = function(values) {
		this.values = values;
		
		// now default scores to 0:
		var columnIndex = this.values.length;
		var numberOfLines = this.values[0].length;
		var lineIndex = 0;
		while (columnIndex--) {
			lineIndex = numberOfLines;
			this.scores[columnIndex] = [];
			this.locked[columnIndex] = [];
			this.slurs[columnIndex] = [];
			while (lineIndex--) {
				this.scores[columnIndex][lineIndex] = 0;
				this.locked[columnIndex][lineIndex] = false;
				this.slurs[columnIndex][lineIndex] = '';
			}
		}
	}


	// sets values in all following columns to the value in this column
	this.propogateColumnsAfter = function(propogateColumnIndex) {
		var numberOfLines = this.values[0].length;
		var lineIndex = 0;
		for (var columnIndex = propogateColumnIndex + 1; columnIndex < this.values.length; columnIndex++) {
			lineIndex = numberOfLines;
			while (lineIndex--) {
				this.values[columnIndex][lineIndex] = this.values[propogateColumnIndex][lineIndex];
				this.scores[columnIndex][lineIndex] = 0;
				this.locked[columnIndex][lineIndex] = this.locked[propogateColumnIndex][lineIndex];
				this.slurs[columnIndex][lineIndex] = '';
			}
		}
	}

	this.clearSlurs = function() {
		var columnIndex = this.values.length;
		var numberOfLines = this.values[0].length;
		var lineIndex = 0;
		while (columnIndex--) {
			lineIndex = numberOfLines;
			while (lineIndex--) {
				this.slurs[columnIndex][lineIndex] = '';
			}
		}
	}

	this.appendLinesFromFile = function(path, fileColumnStartIndex) {
		var originalNumberOfLines = this.values[0].length;
		
		var tempBeak = new beak.matrix();
		tempBeak.loadValuesJSON(path); 

		this.setSize(this.values.length, originalNumberOfLines + tempBeak.values[0].length);

		var columnIndex = this.values.length;
		var numberOfLines = tempBeak.values[0].length;
		var lineIndex = 0;
		while (columnIndex--) {
			lineIndex = numberOfLines;
			while (lineIndex--) {
				this.values[columnIndex][originalNumberOfLines + lineIndex] = 
					tempBeak.values[columnIndex + fileColumnStartIndex][lineIndex];
				this.scores[columnIndex][lineIndex] = 0;
				this.locked[columnIndex][lineIndex] = false;
				this.slurs[columnIndex][lineIndex] = '';
			}
		}
	}

	this.appendColumnsFromFile = function(path, ignoreFirstColumn) {
		var originalNumberOfColumns = this.values.length;
		
		var tempBeak = new beak.matrix();
		tempBeak.loadValuesJSON(path, ignoreFirstColumn); 

		this.setSize(originalNumberOfColumns + tempBeak.values.length, this.values[0].length);

		var columnIndex = tempBeak.values.length;
		var numberOfLines = this.values[0].length;
		var lineIndex = 0;
		while (columnIndex--) {
			lineIndex = numberOfLines;
			while (lineIndex--) {
				this.values[originalNumberOfColumns + columnIndex][lineIndex] = tempBeak.values[columnIndex][lineIndex];
				this.scores[columnIndex][lineIndex] = 0;
				this.locked[columnIndex][lineIndex] = false;
				this.slurs[columnIndex][lineIndex] = '';
			}
		}
	}
	
	this.setSize = function(numberOfColumns, numberOfLines) {
		numberOfColumns = (numberOfColumns < 0) ? 0 : numberOfColumns;
		numberOfLines = (numberOfLines < 0) ? 0 : numberOfLines;

			this.values.length = numberOfColumns;
			this.scores.length = numberOfColumns;
			this.locked.length = numberOfColumns;
			this.slurs.length = numberOfColumns;

			var columnIndex = numberOfColumns;

			while (columnIndex--) {
				if (!this.values[columnIndex]) {
					this.values[columnIndex] = new Array(numberOfLines);
					this.scores[columnIndex] = new Array(numberOfLines);
					this.locked[columnIndex] = new Array(numberOfLines);
					this.slurs[columnIndex] = new Array(numberOfLines);
				} else {
					this.values[columnIndex].length = numberOfLines;
					this.scores[columnIndex].length = numberOfLines;
					this.locked[columnIndex].length = numberOfLines;
					this.slurs[columnIndex].length = numberOfLines;
				}
				var lineIndex = numberOfLines;
				while (lineIndex--) {
					if (this.locked[columnIndex][lineIndex] !== true) this.locked[columnIndex][lineIndex] = false;
				}
			}
	}


	this.loadValuesJSON = function(path) {
		memstr = "";
		data = "";
		maxchars = 2000;
		var f = new File(path,"read");
		f.open();
		if (f.isopen) {
			while(f.position<f.eof) {
				memstr+=f.readstring(maxchars);
			}
			f.close();
		} else {
			post("Error\n");
		}
		// return eval("("+memstr+")"); // could work in theory...!

		// for debugging:
		//post("\nJSON Read",path);
		this.loadValues(JSON.parse(memstr));
	}

	this.loadValuesJSON = function(path, ignoreFirstColumn) {
		memstr = "";
		data = "";
		maxchars = 2000;
		var f = new File(path,"read");
		f.open();
		if (f.isopen) {
			while(f.position<f.eof) {
				memstr+=f.readstring(maxchars);
			}
			f.close();
		} else {
			post("Error\n");
		}
		// return eval("("+memstr+")"); // could work in theory...!

		// for debugging:
		//post("\nJSON Read",path);
		var myValues = JSON.parse(memstr);
		if (ignoreFirstColumn) myValues.splice(0, 1); // remove first column if necessary
		this.loadValues(myValues);
	}

	this.loadMinValuesJSON = function(path) {
		memstr = "";
		data = "";
		maxchars = 2000;
		var f = new File(path,"read");
		f.open();
		if (f.isopen) {
			while(f.position<f.eof) {
				memstr+=f.readstring(maxchars);
			}
			f.close();
		} else {
			post("Error\n");
		}
		// return eval("("+memstr+")"); // could work in theory...!

		// for debugging:
		post("\nJSON Read Mins:",path);
		this.minValues = JSON.parse(memstr);
	}

	this.loadMaxValuesJSON = function(path) {
		memstr = "";
		data = "";
		maxchars = 2000;
		var f = new File(path,"read");
		f.open();
		if (f.isopen) {
			while(f.position<f.eof) {
				memstr+=f.readstring(maxchars);
			}
			f.close();
		} else {
			post("Error\n");
		}
		// return eval("("+memstr+")"); // could work in theory...!

		// for debugging:
		post("\nJSON Read Maxes",path);
		this.maxValues = JSON.parse(memstr);
	}

	this.column = function(columnIndex) {
		return this.values[columnIndex];
	}

	this.loserColumnIndex = function() {
		var numberOfColumns = this.values.length;
		var numberOfLines = this.values[0].length;
		var columnIndex = numberOfColumns;
		var lineIndex = numberOfLines;
		var lowestColumnScore = 0;
		var myColumnScore = 0;
		var lowestColumnIndex = 0;
		// TO DO .. put number of lines & number of columns into beak properties
		while (columnIndex--) {
			myColumnScore = 0;
			lineIndex = numberOfLines;
			while (lineIndex--) {
				myColumnScore += this.scores[columnIndex][lineIndex];
			}
			if ((myColumnScore < lowestColumnScore) || (columnIndex == (numberOfColumns - 1))) {
				lowestColumnScore = myColumnScore;
				lowestColumnIndex = columnIndex;
			}
		}
		return lowestColumnIndex;
	}

	this.noteName = function(columnIndex, lineIndex) {
		var myNoteValue = this.values[columnIndex][lineIndex];
		if (myNoteValue) {
			var myPitchClass = (myNoteValue % 12);
			var myOctave = Math.floor(myNoteValue / 12) - 1;
			var myPitchName = '';
			switch (myPitchClass) {
				case 0:
					myPitchName = 'C';
					break;
				case 1:
					myPitchName = 'C#';
					break;
				case 2:
					myPitchName = 'D';
					break;
				case 3:
					myPitchName = 'D#';
					break;
				case 4:
					myPitchName = 'E';
					break;
				case 5:
					myPitchName = 'F';
					break;
				case 6:
					myPitchName = 'F#';
					break;
				case 7:
					myPitchName = 'G';
					break;
				case 8:
					myPitchName = 'G#';
					break;
				case 9:
					myPitchName = 'A';
					break;
				case 10:
					myPitchName = 'A#';
					break;
				case 11:
					myPitchName = 'B';
					break;
			}
			return myPitchName + String(myOctave);
		} else return 'ERROR!!!!!!!!!!';
	}


	// call this to populate the slur values:
	// TO DO: this could be better broken out somewhere to be more universal
	this.updateSlurs = function() {
		var columnIndex = this.values.length;
		var lineIndex = 0;

		var lengthWeightValue = 16;
		var jumpWeightValue = 12;

		var myLength = 0;
		var myJump = 0;
		var myNextJump = 0;
		var forceEndSlur = false;

		for (var lineIndex = 0;  lineIndex < this.values[0].length; lineIndex++) {
			
			forceEndSlur = false;
			myLength = 0;

			for (var columnIndex = 0; columnIndex < this.values.length; columnIndex++) {				
				if (forceEndSlur) { // end slur if forcing it
					this.slurs[columnIndex][lineIndex] = ')';
					forceEndSlur = false;
				} else if (columnIndex == 0) this.slurs[columnIndex][lineIndex] = '('; // always start with an open slur
				else if (columnIndex == this.values.length-1) this.slurs[columnIndex][lineIndex] = ')'; // always end with a close slur
				else if (this.slurs[columnIndex - 1][lineIndex] == ')') this.slurs[columnIndex][lineIndex] = '('; // always open slur after last one closed
				else if (columnIndex == this.values.length-2) this.slurs[columnIndex][lineIndex] = ''; // never end slurs on penultimate note
				else if (columnIndex < this.values.length-2) { // when to end the mid-way slurs prior to penultimate note
					myJump = Math.abs(this.values[columnIndex][lineIndex] - this.values[columnIndex + 1][lineIndex]) - 3;
					// for debugging:
					//post(myJump);
					if (Math.random() < (myLength / lengthWeightValue) + (myJump / jumpWeightValue)) { // if more notes go by or bigger jump follows, then more likely to end slur
						myNextJump = Math.abs(this.values[columnIndex + 1][lineIndex] - this.values[columnIndex + 2][lineIndex]) - 3;
						if 	(columnIndex < this.values.length-3 && myNextJump > myJump) {
							// if not note before the penultimate note, AND the following jump is greater
							// than this one, then stop the slur then instead
							forceEndSlur = true;
							this.slurs[columnIndex][lineIndex] = '';
							myLength += 1;
						} else {
							// otherwise (following jump is not greater) then end slur now
							this.slurs[columnIndex][lineIndex] = ')';
							myLength = 0;
						}
					} else {
						// not ending slur yet:
						this.slurs[columnIndex][lineIndex] = '';
						myLength += 1;
					}
				} // end if prior to penultimate note
			} // end for each column
		} //end for each line
	}

	this.noteLY = function(columnIndex, lineIndex) {
		var myNoteValue = this.values[columnIndex][lineIndex];
		if (myNoteValue) {
			var myPitchClass = (myNoteValue % 12);
			var myOctave = Math.floor(myNoteValue / 12) - 1;
			var myPitchName = '';
			
			// if the tritone above the note is spelled as a fifth then this is 1, otherwise 0
			// (or conversely, as used below, 1 if jump DOWN to this note from the tritone is spelled as a fifth)
			var tritoneAboveIsFifth = 0; 
			
			switch (myPitchClass) {
				case 0:
					myPitchName = 'c';
					break;
				case 1:
					myPitchName = 'cis';
					tritoneAboveIsFifth = 1;
					break;
				case 2:
					myPitchName = 'd';
					break;
				case 3:
					myPitchName = 'dis';
					tritoneAboveIsFifth = 1;
					break;
				case 4:
					myPitchName = 'e';
					tritoneAboveIsFifth = 1;
					break;
				case 5:
					myPitchName = 'f';
					break;
				case 6:
					myPitchName = 'fis';
					tritoneAboveIsFifth = 1;
					break;
				case 7:
					myPitchName = 'g';
					break;
				case 8:
					myPitchName = 'gis';
					tritoneAboveIsFifth = 1;
					break;
				case 9:
					myPitchName = 'a';
					break;
				case 10:
					myPitchName = 'bes'; // use Bb here for purposes of oxygen piece... TO DO... be able to set # or b settings
					break;
				case 11:
					myPitchName = 'b';
					tritoneAboveIsFifth = 1;
					break;
			}
			
			var previousNoteValue = (columnIndex == 0 ? 60 : this.values[columnIndex-1][lineIndex]); // set the first one to middle c (assume will by used in LY in a relative context starting from middle c)

			var myChange = myNoteValue - previousNoteValue;

			var myOctaveChange = 0;

			var myPitchChange = (Math.abs(myChange) % 12);

			var octaveIndicator = "";

			if (myChange > 5) {
				myOctaveChange = Math.floor(myChange / 12); // add any octave jumps
				// if the remaining jump is greater than a tritone, 
				//or if it's a tritone and tritoneAboveIsFifth=0 (which means that the jump UP from below is a fifth), then add another octave:
				if (myPitchChange > 6 || (myPitchChange == 6 && tritoneAboveIsFifth==0)) myOctaveChange +=1; 
			} else if (myChange < -5) {
				// similar to above: if the remaining jump is greater than a tritone, 
				//or if it's a tritone and tritoneAboveIsFifth=1, then add another octave:
				myOctaveChange = Math.ceil(myChange / 12); // add any (negative) octave jumps
				if (myPitchChange > 6 || (myPitchChange == 6 && tritoneAboveIsFifth==1)) myOctaveChange -=1; 
			}

			// add commas for each octave down or apostrophes for each octave up
			var octaveCounter = Math.abs(myOctaveChange);
			while (octaveCounter--) {
				octaveIndicator += (myOctaveChange > 0 ? "'" : ",");
			}
				
			return myPitchName + octaveIndicator;
		} else return 'ERROR!!!!!!!!!!';
	}


	this.outputSize = function() {
		outlet(0, ['cols', this.values.length]);
		outlet(0, ['rows',  this.values[0].length]);
	}

	this.outputScore = function(scoringFunctions) {
		outlet(1, ['score', this.howWonderful(scoringFunctions)]);
	}

	this.outputMIDI = function() {
		outlet(2, 'clear');
		outlet(2, 'record');
		for (var columnIndex = 0; columnIndex < this.values.length; columnIndex++) {
			for (var lineIndex = 0;  lineIndex < this.values[0].length; lineIndex++) {
				outlet(2, [
					(lineIndex==0 ? this.noteSpacing : 0), 
					this.values[columnIndex][lineIndex], 
					64,
					this.noteSpacing,
					1,
					lineIndex + 1
				]);
			}
		}
		outlet(2, 'stop');
		outlet(2, 'write');
	}

	this.outputLY = function(path, variablePrefix, addSlurs, noteLength, addRelativeC, ignoreFirstColumn) {


		if (!noteLength) noteLength = 8;

		if (ignoreFirstColumn == true) {
			var beakTemp = this.clone();
			beakTemp.values.splice(0, 1);
			beakTemp.outputLY(path, variablePrefix, addSlurs, noteLength, addRelativeC, false);
		} else {

			var fout = new File(path,"write","TEXT");
			
			var LilyLine = '';

			this.updateSlurs();

			if (fout.isopen) {
				fout.eof = 0;

				for (var lineIndex = 0;  lineIndex < this.values[0].length; lineIndex++) {

					LilyLine = 
						variablePrefix 
						+ this.numberNames[lineIndex + 1] 
						+ ' = ' 
						+ (addRelativeC ? '\\relative c\'' : '') + '{';

					for (var columnIndex = 0; columnIndex < this.values.length; columnIndex++) {				
						LilyLine += this.noteLY(columnIndex, lineIndex) 
							+ (columnIndex==0 ? String(noteLength) : '')
							+ (addSlurs ? this.slurs[columnIndex][lineIndex] : '') + ' ';
					}
					
					LilyLine += '}'

					fout.writeline(LilyLine);

				}

				fout.close();
				post("\nLY Write",path);
			} else {
				post("\ncould not create LilyPond file: " + path);
			}
		}
	}

	this.outputJSON = function(path) {
		var jase = JSON.stringify(this.values, null, '\t');
		var fout = new File(path,"write","TEXT");
		if (fout.isopen) {
			fout.eof = 0;
			fout.writeline(jase);
			fout.close();
			post("\nJSON Write",path);
		} else {
			post("\ncould not create json file: " + path);
		}
	}


	this.outputLastColumnJSON = function(path) {
		var writeValues = [];
		writeValues[0] = this.values[this.values.length - 1];
		var jase = JSON.stringify(writeValues, null, '\t');
		var fout = new File(path,"write","TEXT");
		if (fout.isopen) {
			fout.eof = 0;
			fout.writeline(jase);
			fout.close();
			post("\nJSON Write",path);
		} else {
			post("\ncould not create json file: " + path);
		}
	}

	this.outputGrid = function() {
		for (var lineIndex = 0;  lineIndex < this.values[0].length; lineIndex++) {
			for (var columnIndex = 0; columnIndex < this.values.length; columnIndex++) {
				this.outputGridCell(columnIndex, lineIndex);
			}
		}
	}
	
	this.outputGridCell = function(columnIndex, lineIndex) {
		var noteStyle = '';
		var myNoteScore = 0;

				myNoteScore = this.scores[columnIndex][lineIndex];
				
				if (this.locked[columnIndex][lineIndex]) {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'brgb', 202, 202, 202]);				
				} else if (!this.values[columnIndex][lineIndex]) {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'brgb', 122, 122, 122]);
				} else {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'brgb']);
				}

				if (myNoteScore <= -100) {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'frgb', 255, 0, 0]);
				} else if (myNoteScore <= -40) {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'frgb', 180, 40, 0]);
				} else if (myNoteScore < 0) {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'frgb', 90, 90, 0]);
				} else if (myNoteScore > 1) {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'frgb', 0, 0, 120]);
				} else {
					outlet(0, ['cell', columnIndex + 1, lineIndex + 1, 'frgb', 0, 0, 0]);
				}

				outlet(0, ['set', columnIndex + 1, lineIndex + 1, this.noteName(columnIndex, lineIndex) + ' ' + String(myNoteScore)]);
	}

	this.lockValue = function(columnIndex, lineIndex, isLocked) {
		this.locked[columnIndex][lineIndex] = isLocked;
	}

	this.line = function(lineIndex) {
		var returnLine = [];
	    var i = this.values.length;
	    while (i--) {
	       returnLine.splice(0, 0, this.values[i][lineIndex]);
	    }
	    return returnLine;
	}

	this.randomColumnIndeces = function() {
		var returnLine = [];
	    var i = this.values.length;
	    while (i--) {
	       returnLine.splice(0, 0, i);
	    }
	    return returnLine.sort(function() {return 0.5 - Math.random()});
	}


	// IN PROGRESS... IS THIS NEEDED?
	this.swap2ColumnValues_Random = function(columnIndex) {
			var lineIndex1 = Math.floor(Math.random() * this.values[columnIndex].length);
			var lineIndex2 = Math.floor(Math.random() * this.values[columnIndex].length);
		if (this.checkSwap(columnIndex, columnIndex, lineIndex1, lineIndex2)) {
		}
	}

	this.swap2ColumnValues = function(columnIndex, lineIndex1, lineIndex2) {
		if (this.checkSwap(columnIndex, columnIndex, lineIndex1, lineIndex2)) {
			var swapValue = this.values[columnIndex][lineIndex1];
			this.values[columnIndex][lineIndex1] = this.values[columnIndex][lineIndex2];
			this.values[columnIndex][lineIndex2] = swapValue;
		}
	}

	this.swap2Values = function(columnIndex1, columnIndex2, lineIndex1, lineIndex2) {
		if (this.checkSwap(columnIndex1, columnIndex2, lineIndex1, lineIndex2)) {
			var swapValue = this.values[columnIndex1][lineIndex1];
			this.values[columnIndex1][lineIndex1] = this.values[columnIndex2][lineIndex2];
			this.values[columnIndex2][lineIndex2] = swapValue;
		}
	}

	this.checkSwap = function(columnIndex1, columnIndex2, lineIndex1, lineIndex2) {
		var swapOK = true; // assume innocent until proven guilty

		
		if (this.minValues.length > columnIndex2 
			&& this.maxValues.length > columnIndex2
			&& this.minValues[0].length > lineIndex2
			&& this.minValues[0].length > lineIndex2
			) {
				if (this.values[columnIndex1][lineIndex1] < this.minValues[columnIndex2][lineIndex2]
					|| this.values[columnIndex1][lineIndex1] > this.maxValues[columnIndex2][lineIndex2]
					) swapOK = false;
		}
		if (this.minValues.length > columnIndex1 
			&& this.maxValues.length > columnIndex1
			&& this.minValues[0].length > lineIndex1
			&& this.minValues[0].length > lineIndex1
			) {
				if (this.values[columnIndex2][lineIndex2] < this.minValues[columnIndex1][lineIndex1]
					|| this.values[columnIndex2][lineIndex2] > this.maxValues[columnIndex1][lineIndex1]
					) swapOK = false;
		}
		
		return swapOK;

	}

	this.swap2ColumnValues_Weighted  = function(columnIndex, negativeScoreSwapChance, positiveScoreSwapChance) {
		
		negativeScoreSwapChance = negativeScoreSwapChance || 0.5;
		positiveScoreSwapChance = positiveScoreSwapChance || 0.1;
		var myColumnScore = 0;
		var numberOfLines = this.values[columnIndex].length;
		var lineIndex = numberOfLines;
		while (lineIndex--) {
			myColumnScore += this.scores[columnIndex][lineIndex]; 
		}
		var myChangeProbabilty = (myColumnScore < 0) ? negativeScoreSwapChance : positiveScoreSwapChance;
		if (Math.random() < myChangeProbabilty) {
			var myChangeIndeces = this.sortedLineIndeces(columnIndex);
			var i = numberOfLines;
			var swapIndex1 = -1;
			var swapIndex2 = -1;

			while (i--) {  // loops through the sorted line indeces

				// first make sure this position isn't locked...
				if (!this.locked[columnIndex][myChangeIndeces[i]])  {

					// if first one to swap hasn't been set, then chance it will be set
					if (swapIndex1 == -1 && Math.random() < 0.5) {
						swapIndex1 = i;
					} else if (swapIndex1 > -1 && Math.random() < 0.1) {
						if (this.checkSwap(columnIndex, columnIndex, swapIndex1, i)) {
							swapIndex2 = i;
							i = 0;
						}
					}
				} // end if not locked

			}
			if (swapIndex1!= -1 && swapIndex2!= -1) {
				//for debugging:
				//alert('Swapping ' + String(myChangeIndeces[swapIndex1]) + '(' + String(this.values[columnIndex][myChangeIndeces[swapIndex1]]) + ') with ' + String(myChangeIndeces[swapIndex2]) + '(' + String(this.values[columnIndex][myChangeIndeces[swapIndex2]]) + ')');
				this.swap2ColumnValues(columnIndex, myChangeIndeces[swapIndex1], myChangeIndeces[swapIndex2]);
			}
		}

	}

	// returns array of line indeces for a given column sorted by the score (highest to lowest)
	this.sortedLineIndeces = function(columnIndex) {
		var numberOfLines = this.values[columnIndex].length;
		var lineIndex = numberOfLines;

		// first just fill sortedLineIndeces array with incremental values:
		var sortedLineIndeces = [];
		while (lineIndex--) {
			sortedLineIndeces.splice(0,0,lineIndex);
		}
		var myBeak = this;
		return sortedLineIndeces.sort(function(a, b) {
				// for equal scores... randomize:
				if (myBeak.scores[columnIndex][a] == myBeak.scores[columnIndex][b]) return 0.5 - Math.random();
				// for unequal scores... lower values come first:
				else return myBeak.scores[columnIndex][b] - myBeak.scores[columnIndex][a];
			});
	}


	this.swap2ValuesAllColumns = function() {
		// could randomize order of column swaps if swap function becomes smarter
		//var myIndeces = this.randomColumnIndeces();

		var i = this.values.length;
		while (i--) {
			this.swap2ColumnValues(i);
		}
	}

	this.swap2ValuesAllColumns_Weighted = function() {
		// could randomize order of column swaps if swap function becomes smarter
		//var myIndeces = this.randomColumnIndeces();

		var i = this.values.length;
		while (i--) {
			this.swap2ColumnValues_Weighted(i);
		}
	}


	this.randomizeColumn = function(columnIndex) {

		var includedLineIndeces = []; // every index that's not locked
		var includedColumnValues = []; // every value that's not locked
	    
	    var lineIndex = this.values[columnIndex].length;
	    while (lineIndex--) {
	    	// only include this line index if it's not locked
	    	if (!this.locked[columnIndex][lineIndex]) {
	    		includedLineIndeces.splice(0, 0, lineIndex);
	    		includedColumnValues.splice(0, 0, this.values[columnIndex][lineIndex]);
	    	}
	    }

	    // now randomize the included values
	    includedColumnValues.sort(function() {return 0.5 - Math.random()});

	    // now set original values to the randomized ones for each included index
		var i = includedLineIndeces.length;
		while (i--) {
			this.values[columnIndex][includedLineIndeces[i]] = includedColumnValues[i];
		}
	}

	this.randomizeAllColumns = function() {
	    var i = this.values.length;
	    while (i--) {
	       this.randomizeColumn(i);
	    }
	}

	this.howWonderful = function(scoringFunctions) {
	    var i = scoringFunctions.length;
		var runningTally = 0;
	    if (i > 0) {
		    while (i--) {
		       runningTally += (scoringFunctions[i])(this);
		    }
		}
	    return runningTally / scoringFunctions.length;
	}

	this.beakBetter2 = function(scoringFunctions, onBetter, onIterate) {
	}

	this.beakBetter = function(scoringFunctions, onBetter, onIterate) {

			var beaks = [];
			beaks[0] = this;
			beaks[0].updateScore(scoringFunctions);

			beaks[1] = this.clone();
			beaks[1].swap2ValuesAllColumns_Weighted();
			beaks[1].updateScore(scoringFunctions);

			beaks[2] = this.clone();
			beaks[2].swap2ValuesAllColumns_Weighted();
			beaks[2].updateScore(scoringFunctions);

			beaks[3] = beaks[1].clone();
			beaks[3].swap2ValuesAllColumns_Weighted();
			beaks[3].updateScore(scoringFunctions);

			beaks[4] = beaks[1].clone();
			beaks[4].swap2ValuesAllColumns_Weighted();
			beaks[4].updateScore(scoringFunctions);
			/*
			beaks[5] = beaks[2].clone();
			beaks[5].swap2ValuesAllColumns_Weighted();
			beaks[5].updateScore(scoringFunctions);

			beaks[6] = beaks[2].clone();
			beaks[6].swap2ValuesAllColumns_Weighted();
			beaks[6].updateScore(scoringFunctions);
			*/

			// this shakes up the column before the worst one...!
			var beaksLoserColumn = 0;

			beaks[5] = this.clone();
			beaks[5].swap2ValuesAllColumns_Weighted();
			beaks[5].updateScore(scoringFunctions);
			beaksLoserColumn = beaks[5].loserColumnIndex();
			if (beaksLoserColumn > 0) {
				beaks[5].randomizeColumn(beaksLoserColumn);
				beaks[5].updateScore(scoringFunctions);
				beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[5].updateScore(scoringFunctions);
				beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[5].updateScore(scoringFunctions);
				beaksLoserColumn = beaks[5].loserColumnIndex;
				if (beaksLoserColumn > 0) { 
					beaks[5].randomizeColumn(beaksLoserColumn - 1);
					beaks[5].updateScore(scoringFunctions);
					beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn);
					beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
					beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
					beaks[5].updateScore(scoringFunctions);
					beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn);
					beaks[5].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
					beaks[5].updateScore(scoringFunctions);
				}
			}
			
			beaks[6] = beaks[2].clone();
			beaks[6].swap2ValuesAllColumns_Weighted();
			beaks[6].updateScore(scoringFunctions);
			beaksLoserColumn = beaks[6].loserColumnIndex();
			beaks[6].randomizeColumn(beaksLoserColumn);
			beaks[6].updateScore(scoringFunctions);
			beaks[6].swap2ColumnValues_Weighted(beaksLoserColumn);
			beaks[6].swap2ColumnValues_Weighted(beaksLoserColumn);
			beaks[6].swap2ColumnValues_Weighted(beaksLoserColumn);
			beaks[6].updateScore(scoringFunctions);

			beaksLoserColumn = this.loserColumnIndex();
			var beaksOriginalLoserColumn = beaksLoserColumn;

			if (beaksLoserColumn > 0) {


				beaks[7] = this.clone();
				beaks[7].randomizeColumn[beaksLoserColumn - 1];
				beaks[7].randomizeColumn[beaksLoserColumn];
				beaks[7].updateScore(scoringFunctions);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[7].updateScore(scoringFunctions);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn);	
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[7].updateScore(scoringFunctions);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn - 1);
				beaks[7].swap2ColumnValues_Weighted(beaksLoserColumn);
				beaks[7].updateScore(scoringFunctions);

				beaks[8] = beaks[7].clone();
				beaks[8].swap2ValuesAllColumns_Weighted();
				beaks[8].updateScore(scoringFunctions);

				beaks[9] = beaks[7].clone();
				beaks[9].swap2ValuesAllColumns_Weighted();
				beaks[9].updateScore(scoringFunctions);

				beaks[10] = beaks[8].clone();
				beaks[10].swap2ValuesAllColumns_Weighted();
				beaks[10].updateScore(scoringFunctions);

				beaks[11] = beaks[9].clone();
				beaks[11].swap2ValuesAllColumns_Weighted();
				beaks[11].updateScore(scoringFunctions);

				beaks[12] = this.clone();
				beaks[12].swap2ColumnValues_Weighted(beaksLoserColumn, 0.6, 0.6)
				beaks[12].swap2ColumnValues_Weighted(beaksLoserColumn - 1, 0.6, 0.6)
				beaks[12].updateScore(scoringFunctions);
				beaks[12].swap2ColumnValues_Weighted(beaksLoserColumn, 0.6, 0.6)
				beaks[12].swap2ColumnValues_Weighted(beaksLoserColumn - 1, 0.6, 0.6)
				beaks[12].updateScore(scoringFunctions);

				beaks[13] = this.clone();
				beaks[13].swap2ColumnValues_Weighted(beaksLoserColumn - 1, 0.6, 0.6)
				beaks[13].updateScore(scoringFunctions);
				beaksLoserColumn = beaks[7].loserColumnIndex();
				if (beaksLoserColumn > 0) {
					beaks[13].swap2ColumnValues_Weighted(beaksLoserColumn - 1, 0.6, 0.6)
					beaks[13].swap2ColumnValues_Weighted(beaksLoserColumn, 0.6, 0.6)
					beaks[13].updateScore(scoringFunctions);
				}

				beaks[14] = beaks[12].clone();
				beaksLoserColumn = beaks[14].loserColumnIndex();
				beaks[14].swap2ColumnValues_Weighted(beaksLoserColumn, 0.6, 0.6)
				beaks[14].updateScore(scoringFunctions);
				beaks[14].swap2ColumnValues_Weighted(beaksLoserColumn, 0.6, 0.6)
				beaks[14].updateScore(scoringFunctions);
			}	


			var myScore = 0;
			var maxScore = 0;
			var bestBeak = 0;
			for (var i = 0; i < beaks.length; i++) {
				myScore = beaks[i].beakScore;
				if (myScore > maxScore || i === 0) {
					bestBeak = i;
					maxScore = myScore;
					// for analyzing;
				}
			}
			

			if (bestBeak > 0) {
				this.values = beaks[bestBeak].values;

				// TO DO: PRINT BEST BEAK HERE

				this.noGos = 0;
				(onBetter)();
			} else {
				/*
				this.noGos +=1;
				if (this.noGos == 66) {
					this.noGos = 0;
					if (Math.random() < 0.5) {
						// DO SOMETHING CRAZY!!!
						this.randomizeColumn(beaksOriginalLoserColumn);
						if (beaksOriginalLoserColumn > 0 && Math.random < 0.3) {
							this.randomizeColumn(beaksOriginalLoserColumn - 1);
						}
					document.getElementById('beak_numbers').innerHTML += 'BANG, ';
					}
				}
				*/
			}
			if (onIterate) {
				(onIterate)();
			}
	}


};


beak.scoring = {};

// repeated notes = -100
// try-tone step = -1
// half-step = 6
// parralel unisons = -100
// parallel octaves = -50
// parallel fifths = -20
// contrary motion = 4
// parallel 3rds = 3

beak.scoring.parallelBlocks = function(beakMatrix) {
	// diatonic scoring: 
	// 0, 7, 14, 21, 28, 35,
	// 0, 7,  2,  9,  4, 11, 

	// put circle of 5ths in array (index of where any given note is on circle of 5ths)
	var cicleOf5ths = [0, 7, 2, 9, 4, 11, 6, 1, 8, 3, 10, 5]


}



beak.scoring.myScore = function(beakMatrix) {
	var myScore = 0;

	var numberofColumns = beakMatrix.values.length;
	var columnIndex = numberofColumns;
	var numberOfLines = beakMatrix.values[0].length;
	var myNoteValue = 0;
	var lineIndex = numberOfLines;
	var lineIndexCompare = 0;
	var myMelodicInterval = 0;
	var myAbsMelodicInterval = 0;
	var lineCompareMelodicInterval = 0;
	var myHarmonicInterval = 0;
	var myHarmonicChange = 0;
	var nextMelodicInterval = 0;

	while (columnIndex--) {
		// do any columns-based scoring here
		lineIndex = numberOfLines;
		while (lineIndex--) {
			myNoteValue = beakMatrix.values[columnIndex][lineIndex];

			//default score for this note to 0:
			beakMatrix.scores[columnIndex][lineIndex] = 0;

			// only score it if a note exists here and if not locked
			if (beakMatrix.values[columnIndex][lineIndex] != null && !(beakMatrix.locked[columnIndex][lineIndex])) {


				// _______________________________________________
				// simple note-value based scoring here:



				if (beakMatrix.minValues.length > columnIndex) {
					if (beakMatrix.minValues[0].length > lineIndex) {
						if (beakMatrix.values[columnIndex][lineIndex] <  beakMatrix.minValues[columnIndex][lineIndex]) {
							myScore += -800;
							beakMatrix.scores[columnIndex][lineIndex] += - 800;
						}
					}
				}

				if (beakMatrix.maxValues.length > columnIndex) {
					if (beakMatrix.maxValues[0].length > lineIndex) {
						if (beakMatrix.values[columnIndex][lineIndex] >  beakMatrix.maxValues[columnIndex][lineIndex]) {
							myScore += -800;
							beakMatrix.scores[columnIndex][lineIndex] += - 800;
						}
					}
				}

				// _______________________________________________
				// melodic interval scoring here: (can't score first column)
				if (columnIndex>0 && (beakMatrix.values[columnIndex - 1][lineIndex] != null)) {
					myMelodicInterval =  myNoteValue - beakMatrix.values[columnIndex - 1][lineIndex];
					myAbsMelodicInterval = Math.abs(myMelodicInterval);

					switch (myAbsMelodicInterval) {
						case 0:
							beakMatrix.scores[columnIndex][lineIndex] += - 290;
							myScore += -290; // unisons are REALLY BAD!!!!!
							break;
						case 1:
							beakMatrix.scores[columnIndex][lineIndex] += 6;
							myScore += 4; // minor seconds OK
							break;
						case 2:
							beakMatrix.scores[columnIndex][lineIndex] += 7;
							myScore += 5; // major seconds pretty nice
							break;
						case 3:
							// fall-through
						case 4:
							beakMatrix.scores[columnIndex][lineIndex] += 4;
							myScore += 3; // major and minor 3rds OK
							break;
						case 5:
							//beakMatrix.scores[columnIndex][lineIndex] += 1;
							//myScore += 1; // 4ths alright
							break;
						case 6: 
							beakMatrix.scores[columnIndex][lineIndex] += -5;
							myScore += -5;  // tritones not so good
							break;
						case 7:
							//beakMatrix.scores[columnIndex][lineIndex] += 1;
							//myScore += 1; // 5ths alright
							break;
						case 8:
							// fall-through
						case 9:
							beakMatrix.scores[columnIndex][lineIndex] += -2;
							myScore += -2;  
							break; // just a minor deduction for 6ths
						case 12:
							beakMatrix.scores[columnIndex][lineIndex] += -5;
							myScore += -5; 
							break; // mid deduction for octaves
						default:
							beakMatrix.scores[columnIndex][lineIndex] += ((9 - myAbsMelodicInterval) * 9);
							myScore += ((9 - myAbsMelodicInterval) * 9); // make all other intervals greater than a 6th worse and worse as they get bigger
					}
					if (myAbsMelodicInterval > 5 && columnIndex < (numberofColumns - 1) && (beakMatrix.values[columnIndex + 1][lineIndex] != null)) {
						// for anything greater than a 4th, look at what happens next
						nextMelodicInterval = beakMatrix.values[columnIndex + 1][lineIndex] - myNoteValue;
						if ((myMelodicInterval > 0 && (nextMelodicInterval == -1 || nextMelodicInterval == -2)) || (myMelodicInterval < 0 && (nextMelodicInterval == 1 || nextMelodicInterval == 2))) {
							beakMatrix.scores[columnIndex][lineIndex] += 2;
							myScore +=2;
						} else if ((myMelodicInterval - nextMelodicInterval) == 0) {
							// just a minor deduction for back and forths
							beakMatrix.scores[columnIndex][lineIndex] += -6;
							myScore += -6;
						} else if (Math.abs(nextMelodicInterval) > 4) {
							// jumps back and forth over a third pretty bad
							beakMatrix.scores[columnIndex][lineIndex] += -22;
							myScore += -22;
						} else if (Math.abs(nextMelodicInterval) > 2) {
							beakMatrix.scores[columnIndex][lineIndex] += -9;
							myScore += -9;
						}
					}
				}
				// _______________________________________________
				// voice-leading & harmonic scoring:
				
				// if only need to score the lines above this one (this line compared to lines below would have already been scored in an earlier iteration):
				// lineIndexCompare = lineIndex;

				// to score every note (intervals scored twice):
				lineIndexCompare = numberOfLines;

				while (lineIndexCompare--) {
					// this part is expensive; keep it SIMPLE!

					// don't note line to itself:
					if (lineIndexCompare!= lineIndex) {

						myHarmonicInterval = Math.abs(myNoteValue - beakMatrix.values[columnIndex][lineIndexCompare]);

						// _______________________________________________
						// harmonic scoring:

						// _______________________________________________
						// voice leading scoring (can't score first column):
						if (columnIndex>0 && (beakMatrix.values[columnIndex - 1][lineIndexCompare] != null)) {
							// the change in the size of the intervals between the two lines (don't care about voice crossing).  Could use in the future:
							//myHarmonicChange = myHarmonicInterval - Math.abs(beakMatrix.values[columnIndex - 1][lineIndex] - beakMatrix.values[columnIndex - 1][lineIndexCompare]);

							lineCompareMelodicInterval = beakMatrix.values[columnIndex][lineIndexCompare] - beakMatrix.values[columnIndex - 1][lineIndexCompare];

							if (myMelodicInterval == lineCompareMelodicInterval) {
								// (parallel motion)
								switch (myHarmonicInterval) {
									case 0:
										beakMatrix.scores[columnIndex][lineIndex] += - 50;
										myScore += -50; // parallel unisons are REALLY BAD!!!!!
										break;
									case 7:
										beakMatrix.scores[columnIndex][lineIndex] += - 10;
										myScore += -10; // parallel fifths not so good
										break;
									case 12:
										beakMatrix.scores[columnIndex][lineIndex] += - 40;
										myScore += -40; // parallel octaves are also really bad;
										break;
								}
							}
						}
					// _______________________________________________
					}
				} // end while (for harmonic / voice leading scoring)
			} // end if note exists
		} // end while (loop through each line)
	} // end while (loop through each column)

	return myScore;
}

beak.scoring.countTest2 = function(beakMatrix) {
	return beakMatrix.values.length * 2;
}


// _________________________________________________________
// GREAT STUFF !!!!!

Object.prototype.clone = function() {
  var newObj = (this instanceof Array) ? [] : {};
  for (i in this) {
    if (i == 'clone') continue;
    if (this[i] && typeof this[i] == 'object') {
      newObj[i] = this[i].clone();
    } else newObj[i] = this[i]
  } return newObj;
};
// _________________________________________________________


var oxygenMaxRoot = "C:\\Ran\\Code\\Max\\Works-Max\\Oxygen\\";
var oxygenLilyRoot = "C:\\Ran\\Code\\LilyPond\\Works-LilyPond\\Oxygen\\";



var myBeak = new beak.matrix();

/*
// transposing the narrator:

	myBeak.loadValuesJSON(oxygenMaxRoot + "narrator.json");
	var columnIndex = myBeak.values.length;
	while (columnIndex--) {
		myBeak.values[columnIndex][0] = myBeak.values[columnIndex][0] + 12;
	}
	myBeak.outputJSON(oxygenMaxRoot + "narrator-hi.json");

	myBeak.loadValuesJSON(oxygenMaxRoot + "narrator.json");
	var columnIndex = myBeak.values.length;
	while (columnIndex--) {
		myBeak.values[columnIndex][0] = myBeak.values[columnIndex][0] - 12;
	}
	myBeak.outputJSON(oxygenMaxRoot + "narrator-low.json");
	*/

// ______________________________________________________________________________________________________________
// ______________________________________________________________________________________________________________

function oxygen() {
	var elementsPerBeat = 2; // 2 for eight notes
	var beatsPerBar = 4; // it's all 4/4
	var elementsPerBar = elementsPerBeat * beatsPerBar;

	var barsSectionA = 4;

	// outputLY = function(path, variablePrefix, addSlurs, noteLength, addRelativeC, ignoreFirstColumn)
	// loadValuesJSON = function(path, ignoreFirstColumn)
	// appendColumnsFromFile = function(path, ignoreFirstColumn)

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segA-vln-1.json");
	myBeak.appendColumnsFromFile(oxygenMaxRoot + "_segA-vln-2.json");
	myBeak.outputLY(oxygenLilyRoot + "_segA-vln.ly", "segAViolin", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segC-vln-vla-1.json");
	myBeak.outputLY(oxygenLilyRoot + "_segC-vln-vla-1.ly", "segCViolinViolaONE", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segC-vln-vla-2.json");
	myBeak.outputLY(oxygenLilyRoot + "_segC-vln-vla-2.ly", "segCViolinViolaTWO", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segD-vln-vla.json");
	myBeak.outputLY(oxygenLilyRoot + "_segD-vln-vla.ly", "segDViolinViola", true, 8, true, true);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segH-vln.json", true);
	myBeak.outputLY(oxygenLilyRoot + "_segH-vln.ly", "segHViolin", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segH-vla-vc-1.json", false);
	myBeak.appendColumnsFromFile(oxygenMaxRoot + "_segH-vla-vc-2.json", true);
	myBeak.outputLY(oxygenLilyRoot + "_segH-vla-vc.ly", "segHViolaCello", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segM-vln-vla.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segM-vln-vla.ly", "segMViolinViola", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segV-vla-vc.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segV-vla-vc.ly", "segVViolaCello", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAU-vln-vla.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAU-vln-vla.ly", "segAUViolinViola", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAC-vln-vla.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAC-vln-vla.ly", "segACViolinViola", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAC-vc-cb.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAC-vc-cb.ly", "segACCelloBass", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segBH-vln.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segBH-vln.ly", "segBHViolin", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segBH-vla-vc.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segBH-vla-vc.ly", "segBHViolaCello", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segBI-vln-vla.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segBI-vln-vla.ly", "segBIViolinViola", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAR-vln.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAR-vln.ly", "segARViolin", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAQ-vla-vc.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAQ-vla-vc.ly", "segAQViolaCello", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAM-vln.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAM-vln.ly", "segAMViolin", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAM-vla-vc.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAM-vla-vc.ly", "segAMViolaCello", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAL-vln.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAL-vln.ly", "segALViolin", true, 8, true, false);

	myBeak.loadValuesJSON(oxygenMaxRoot + "_segAL-vla-vc.json", false);
	myBeak.outputLY(oxygenLilyRoot + "_segAL-vla-vc.ly", "segALViolaCello", true, 8, true, false);

}



// ______________________________________________________________________________________________________________
// ______________________________________________________________________________________________________________


function beak_oxygen_createnarrator(length) {
	myBeak.setSize(length, 1);
	var seedArray = [67, 65, 64, 65, 64, 60];

	var seedImperfectionMultiplier = [0.8, 1, 1.4, 1.2, 1.3, 1.66];
	
	var seedIndex = 0;
	var columnIndex = 0;

	var imperfectionFactor = 0.1;

	var repeatCounter = 0;
	var maxRepeats = 3;
	
	while (columnIndex < myBeak.values.length) {
		if (columnIndex==96) imperfectionFactor = 0.2;
		if (columnIndex==240) imperfectionFactor = 0.3;
		if (columnIndex==328) imperfectionFactor = 0.4;
		if (columnIndex==448) imperfectionFactor = 0.2;
		if (columnIndex==592) {imperfectionFactor = 0.3; maxRepeats = 4;}
		if (columnIndex==612) {imperfectionFactor = 0.1; maxRepeats = 3;}
		if (columnIndex==640) {imperfectionFactor = 0.3; maxRepeats = 4;}
		if (columnIndex==655) {imperfectionFactor = 0.1; maxRepeats = 3;}
		if (columnIndex==696) {imperfectionFactor = 0.3; maxRepeats = 4;}
		if (columnIndex==712) {imperfectionFactor = 0.2; maxRepeats = 4;}
		if (columnIndex==747) {imperfectionFactor = 0.1; maxRepeats = 4;}
		if (columnIndex==790) {imperfectionFactor = 0; maxRepeats = 4;}

		if (repeatCounter==maxRepeats) {
			// if we've already hid the maximum # of repeated notes, move to next note and start counting again
			repeatCounter = 0;
			seedIndex = (seedIndex == (seedArray.length - 1) ? 0 : (seedIndex + 1));
		} 
		if (repeatCounter!=0 && Math.random() < ((imperfectionFactor * seedImperfectionMultiplier[seedIndex]) / ((maxRepeats - repeatCounter) * 1.66))  ) {
			// if not the first note, then there may be a chance we'll move to the next one.
			repeatCounter = 0;
			seedIndex = (seedIndex == (seedArray.length - 1) ? 0 : (seedIndex + 1));
		}
		
		myBeak.values[columnIndex][0] = seedArray[seedIndex];		

		repeatCounter++;
		columnIndex++;
	}
}


function beak_loadJSON(filepath) {
	myBeak.loadValuesJSON(filepath);
	myBeak.outputSize();
	beak_showupdate();
}

function beak_appendColumnsJSON(filepath) {
	myBeak.appendColumnsFromFile(filepath);
	myBeak.outputSize();
	beak_showupdate();	
}

function beak_appendLinesJSON(filepath, fileColumnStartIndex) {
	myBeak.appendLinesFromFile(filepath, fileColumnStartIndex);
	myBeak.outputSize();
	beak_showupdate();	
}

function beak_propogateColumnsAtEnd(addNumberofColumns) {
	var propogateColumnIndex = myBeak.values.length - 1;
	myBeak.setSize(myBeak.values.length + addNumberofColumns, myBeak.values[0].length);
	myBeak.propogateColumnsAfter(propogateColumnIndex);
	myBeak.outputSize();
	beak_showupdate();	
}

function beak_setvalue(colPosition, rowPosition, value) {
	myBeak.values[colPosition - 1][rowPosition - 1] = value;
	beak_showupdate();
}

function beak_setsize(numberOfColumns, numberOfLines) {
	myBeak.setSize(numberOfColumns, numberOfLines);
	beak_showupdate();
}

function beak_saveMIDI() {
	// sends output to detonate object, which prmpts for filename & saves
	myBeak.outputMIDI();
}

function beak_loadMinValuesJSON(filepath) {
	myBeak.loadMinValuesJSON(filepath);
	beak_showupdate();
}

function beak_loadMaxValuesJSON(filepath) {
	myBeak.loadMaxValuesJSON(filepath);
	beak_showupdate();
}

function beak_saveJSON(filepath) {
	// sends output to detonate object, which prmpts for filename & saves
	myBeak.outputJSON(filepath);
}

function beak_saveLastColumnJSON(filepath) {
	// sends output to detonate object, which prmpts for filename & saves
	myBeak.outputLastColumnJSON(filepath);
}

function beak_saveLY(filepath, variablePrefix) {
	// sends output to detonate object, which prmpts for filename & saves
	myBeak.outputLY(filepath, variablePrefix, false);
}

function beak_lock(colPosition, rowPosition, isLocked) {
	myBeak.lockValue(colPosition - 1, rowPosition - 1, isLocked);
	myBeak.outputGridCell(colPosition - 1, rowPosition - 1);
}

function beak_cellselected(colPosition, rowPosition) {
	if (colPosition > 0 && rowPosition > 0) {
		outlet(1, ['locked', myBeak.locked[colPosition - 1][rowPosition - 1]]);
	}
}

function beak_swap2values(columnIndex1, lineIndex1, columnIndex2, lineIndex2) {
	myBeak.swap2Values(columnIndex1, columnIndex2, lineIndex1, lineIndex2);
	beak_showupdate();
}

function beak_swap2columnvalues(columnIndex, lineIndex1, lineIndex2) {
	myBeak.swap2ColumnValues(columnIndex, lineIndex1, lineIndex2);
	beak_showupdate();
}

function msg_int(onOff) {
	if (onOff==0) beak_stop();
	if (onOff==1) beak_start();
}

function beak_start() {
	myBeak.isAlive = true;
	beak_tryagain();	
}

function beak_stop() {
	myBeak.isAlive = false;
}

function beak_tryagain() {
	if (myBeak.isAlive) {
		myBeak.beakBetter(
				[beak.scoring.myScore], 
				beak_showupdate
			);
		outlet(3, 'beak_tryagain');
	}
}

function beak_showupdate() {
	// show score first so that table will reflect updated scoring colors:
	myBeak.outputScore([beak.scoring.myScore]);
	myBeak.outputGrid();
}


// for debugging:
/*
function myBeak_randomize() {
	myBeak.randomizeAllColumns();
	myBeak.showScore([beak.scoring.myScore], 'myscore');	
	myBeak.showHtmlTable('mybeak');
}

function myBeak_showcolumn1rank() {
	alert(myBeak.sortedLineIndeces(1));
}

function myBeak_swapcolumn1() {
	myBeak.swap2ColumnValues_Weighted(1);
	myBeak.showScore([beak.scoring.myScore], 'myscore');	
	myBeak.showHtmlTable('mybeak');
}


function myBeak_force_swap() {
	myBeak.swap2ColumnValues(document.getElementById('swap_column_index').value, document.getElementById('swap_line_index1').value, document.getElementById('swap_line_index2').value);
	myBeak.showScore([beak.scoring.myScore], 'myscore');	
	myBeak.showHtmlTable('mybeak');
}
*/
















/*=======================================================================*/
/*=======================================================================*/
/*=======================================================================*/
/*=======================================================================*/
//  JSON STUFF
/*=======================================================================*/
/*
    http://www.JSON.org/json2.js
    2011-02-23

    Public Domain.
*/
/*=======================================================================*/
var JSON;
if (!JSON) {
    JSON = {};
}

(function () {
    "use strict";

    function f(n) {
        // Format integers to have at least two digits.
        return n < 10 ? '0' + n : n;
    }

    if (typeof Date.prototype.toJSON !== 'function') {

        Date.prototype.toJSON = function (key) {

            return isFinite(this.valueOf()) ?
                this.getUTCFullYear()     + '-' +
                f(this.getUTCMonth() + 1) + '-' +
                f(this.getUTCDate())      + 'T' +
                f(this.getUTCHours())     + ':' +
                f(this.getUTCMinutes())   + ':' +
                f(this.getUTCSeconds())   + 'Z' : null;
        };

        String.prototype.toJSON      =
            Number.prototype.toJSON  =
            Boolean.prototype.toJSON = function (key) {
                return this.valueOf();
            };
    }

    var cx = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        escapable = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        gap,
        indent,
        meta = {    // table of character substitutions
            '\b': '\\b',
            '\t': '\\t',
            '\n': '\\n',
            '\f': '\\f',
            '\r': '\\r',
            '"' : '\\"',
            '\\': '\\\\'
        },
        rep;


    function quote(string) {

// If the string contains no control characters, no quote characters, and no
// backslash characters, then we can safely slap some quotes around it.
// Otherwise we must also replace the offending characters with safe escape
// sequences.

        escapable.lastIndex = 0;
        return escapable.test(string) ? '"' + string.replace(escapable, function (a) {
            var c = meta[a];
            return typeof c === 'string' ? c :
                '\\u' + ('0000' + a.charCodeAt(0).toString(16)).slice(-4);
        }) + '"' : '"' + string + '"';
    }


    function str(key, holder) {

// Produce a string from holder[key].

        var i,          // The loop counter.
            k,          // The member key.
            v,          // The member value.
            length,
            mind = gap,
            partial,
            value = holder[key];

// If the value has a toJSON method, call it to obtain a replacement value.

        if (value && typeof value === 'object' &&
                typeof value.toJSON === 'function') {
            value = value.toJSON(key);
        }

// If we were called with a replacer function, then call the replacer to
// obtain a replacement value.

        if (typeof rep === 'function') {
            value = rep.call(holder, key, value);
        }

// What happens next depends on the value's type.

        switch (typeof value) {
        case 'string':
            return quote(value);

        case 'number':

// JSON numbers must be finite. Encode non-finite numbers as null.

            return isFinite(value) ? String(value) : 'null';

        case 'boolean':
        case 'null':

// If the value is a boolean or null, convert it to a string. Note:
// typeof null does not produce 'null'. The case is included here in
// the remote chance that this gets fixed someday.

            return String(value);

// If the type is 'object', we might be dealing with an object or an array or
// null.

        case 'object':

// Due to a specification blunder in ECMAScript, typeof null is 'object',
// so watch out for that case.

            if (!value) {
                return 'null';
            }

// Make an array to hold the partial results of stringifying this object value.

            gap += indent;
            partial = [];

// Is the value an array?

            if (Object.prototype.toString.apply(value) === '[object Array]') {

// The value is an array. Stringify every element. Use null as a placeholder
// for non-JSON values.

                length = value.length;
                for (i = 0; i < length; i += 1) {
                    partial[i] = str(i, value) || 'null';
                }

// Join all of the elements together, separated with commas, and wrap them in
// brackets.

                v = partial.length === 0 ? '[]' : gap ?
                    '[\n' + gap + partial.join(',\n' + gap) + '\n' + mind + ']' :
                    '[' + partial.join(',') + ']';
                gap = mind;
                return v;
            }

// If the replacer is an array, use it to select the members to be stringified.

            if (rep && typeof rep === 'object') {
                length = rep.length;
                for (i = 0; i < length; i += 1) {
                    if (typeof rep[i] === 'string') {
                        k = rep[i];
                        v = str(k, value);
                        if (v) {
                            partial.push(quote(k) + (gap ? ': ' : ':') + v);
                        }
                    }
                }
            } else {

// Otherwise, iterate through all of the keys in the object.

                for (k in value) {
                    if (Object.prototype.hasOwnProperty.call(value, k)) {
                        v = str(k, value);
                        if (v) {
                            partial.push(quote(k) + (gap ? ': ' : ':') + v);
                        }
                    }
                }
            }

// Join all of the member texts together, separated with commas,
// and wrap them in braces.

            v = partial.length === 0 ? '{}' : gap ?
                '{\n' + gap + partial.join(',\n' + gap) + '\n' + mind + '}' :
                '{' + partial.join(',') + '}';
            gap = mind;
            return v;
        }
    }

// If the JSON object does not yet have a stringify method, give it one.

    if (typeof JSON.stringify !== 'function') {
        JSON.stringify = function (value, replacer, space) {

// The stringify method takes a value and an optional replacer, and an optional
// space parameter, and returns a JSON text. The replacer can be a function
// that can replace values, or an array of strings that will select the keys.
// A default replacer method can be provided. Use of the space parameter can
// produce text that is more easily readable.

            var i;
            gap = '';
            indent = '';

// If the space parameter is a number, make an indent string containing that
// many spaces.

            if (typeof space === 'number') {
                for (i = 0; i < space; i += 1) {
                    indent += ' ';
                }

// If the space parameter is a string, it will be used as the indent string.

            } else if (typeof space === 'string') {
                indent = space;
            }

// If there is a replacer, it must be a function or an array.
// Otherwise, throw an error.

            rep = replacer;
            if (replacer && typeof replacer !== 'function' &&
                    (typeof replacer !== 'object' ||
                    typeof replacer.length !== 'number')) {
                throw new Error('JSON.stringify');
            }

// Make a fake root object containing our value under the key of ''.
// Return the result of stringifying the value.

            return str('', {'': value});
        };
    }


// If the JSON object does not yet have a parse method, give it one.

    if (typeof JSON.parse !== 'function') {
        JSON.parse = function (text, reviver) {

// The parse method takes a text and an optional reviver function, and returns
// a JavaScript value if the text is a valid JSON text.

            var j;

            function walk(holder, key) {

// The walk method is used to recursively walk the resulting structure so
// that modifications can be made.

                var k, v, value = holder[key];
                if (value && typeof value === 'object') {
                    for (k in value) {
                        if (Object.prototype.hasOwnProperty.call(value, k)) {
                            v = walk(value, k);
                            if (v !== undefined) {
                                value[k] = v;
                            } else {
                                delete value[k];
                            }
                        }
                    }
                }
                return reviver.call(holder, key, value);
            }


// Parsing happens in four stages. In the first stage, we replace certain
// Unicode characters with escape sequences. JavaScript handles many characters
// incorrectly, either silently deleting them, or treating them as line endings.

            text = String(text);
            cx.lastIndex = 0;
            if (cx.test(text)) {
                text = text.replace(cx, function (a) {
                    return '\\u' +
                        ('0000' + a.charCodeAt(0).toString(16)).slice(-4);
                });
            }

// In the second stage, we run the text against regular expressions that look
// for non-JSON patterns. We are especially concerned with '()' and 'new'
// because they can cause invocation, and '=' because it can cause mutation.
// But just to be safe, we want to reject all unexpected forms.

// We split the second stage into 4 regexp operations in order to work around
// crippling inefficiencies in IE's and Safari's regexp engines. First we
// replace the JSON backslash pairs with '@' (a non-JSON character). Second, we
// replace all simple value tokens with ']' characters. Third, we delete all
// open brackets that follow a colon or comma or that begin the text. Finally,
// we look to see that the remaining characters are only whitespace or ']' or
// ',' or ':' or '{' or '}'. If that is so, then the text is safe for eval.

            if (/^[\],:{}\s]*$/
                    .test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, '@')
                        .replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']')
                        .replace(/(?:^|:|,)(?:\s*\[)+/g, ''))) {

// In the third stage we use the eval function to compile the text into a
// JavaScript structure. The '{' operator is subject to a syntactic ambiguity
// in JavaScript: it can begin a block or an object literal. We wrap the text
// in parens to eliminate the ambiguity.

                j = eval('(' + text + ')');

// In the optional fourth stage, we recursively walk the new structure, passing
// each name/value pair to a reviver function for possible transformation.

                return typeof reviver === 'function' ?
                    walk({'': j}, '') : j;
            }

// If the text is not JSON parseable, then a SyntaxError is thrown.

            throw new SyntaxError('JSON.parse');
        };
    }
}());
/*=======================================================================*/
//  END JSON STUFF
/*=======================================================================*/



// _________________________________________________________________________
// _________________________________________________________________________
// ONLOAD STUFF


