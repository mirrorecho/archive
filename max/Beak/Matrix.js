
// TO DO... ability to freeze columns at the beginning.

inlets = 2;
outlets = 3;

var beak = {};

// no errors... just getting better

beak.matrix = function() {
	// private static stuff
	
	beak.isAlive = false;

	this.values = [ [0] ];

	this.scores = [ [0] ];

	this.noGos = 0;

	this.beakCounter = 0;

	this.beakScore = 0;

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
			while (lineIndex--) {
				this.scores[columnIndex][lineIndex] = 0;
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
	}

	// FOR HTML VERSION ONLY:
	/*
	this.showHtmlTable = function(elementID) {
		document.getElementById(elementID).innerHTML = this.htmlTable();
	}

	this.showScore = function(scoringFunctions, elementID) {
		document.getElementById(elementID).innerHTML = this.howWonderful(scoringFunctions);
	}
	*/

	this.outputSize = function() {
		outlet(0, 'cols ' + String(this.values.length));
		outlet(0, 'rows ' + String(this.values[0].length));
	}

	this.outputScore = function(scoringFunctions) {
		outlet(1, 'score ' + this.howWonderful(scoringFunctions));
	}

	this.outputGrid = function() {
		var noteStyle = '';
		var myNoteScore = 0;
		for (var lineIndex = 0;  lineIndex < this.values[0].length; lineIndex++) {
			for (var columnIndex = 0; columnIndex < this.values.length; columnIndex++) {
				myNoteScore = this.scores[columnIndex][lineIndex];
				// look back at this for coloring:
				/*
				if (myNoteScore <= -100) {
					noteStyle = 'style="color:#ff0000;"';
				} else if (myNoteScore <= -40) {
					noteStyle = 'style="color:#dd2200;"';
				} else if (myNoteScore < 0) {
					noteStyle = 'style="color:#cc8800;"';
				} else if (myNoteScore > 1) {
					noteStyle = 'style="color:#0000dd;"';
				} else {
					noteStyle = 'style="color:#000000;"';
				}
				*/
				// this shows note values & scores:
				//myHtml += '<td ' + noteStyle + '>' + this.noteName(columnIndex, lineIndex) + '.' + String(this.values[columnIndex][lineIndex]) + '.' + String(myNoteScore) + '</td>';
				// this shows note values:
				outlet(0, 'set ' + String(columnIndex + 1) + ' ' + String(lineIndex + 1) + ' "' + this.noteName(columnIndex, lineIndex) + '.' + String(myNoteScore) + '"');
			}
		}
	}
	
	// FOR HTML VERSION ONLY:
	/*
	this.htmlTable = function() {
		var myHtml = '<table cellpadding="4">';
		var noteStyle = '';
		var myNoteScore = 0;
		myHtml +='<tr><td> </td>';
		for (var columnIndex = 0; columnIndex < this.values.length; columnIndex++) {
			myHtml +='<td style="background-color:#666666;color:#ffffff;">' + String(columnIndex) + '</td>';
		}
		myHtml +='</tr>';
		for (var lineIndex = 0;  lineIndex < this.values[0].length; lineIndex++) {
			myHtml += '<tr><td style="background-color:#666666;color:#ffffff;">' + String(lineIndex) + '</td>';
			for (var columnIndex = 0; columnIndex < this.values.length; columnIndex++) {
				myNoteScore = this.scores[columnIndex][lineIndex];

				if (myNoteScore <= -100) {
					noteStyle = 'style="color:#ff0000;"';
				} else if (myNoteScore <= -40) {
					noteStyle = 'style="color:#dd2200;"';
				} else if (myNoteScore < 0) {
					noteStyle = 'style="color:#cc8800;"';
				} else if (myNoteScore > 1) {
					noteStyle = 'style="color:#0000dd;"';
				} else {
					noteStyle = 'style="color:#000000;"';
				}
				// this shows note values & scores:
				//myHtml += '<td ' + noteStyle + '>' + this.noteName(columnIndex, lineIndex) + '.' + String(this.values[columnIndex][lineIndex]) + '.' + String(myNoteScore) + '</td>';
				// this shows note values:
				myHtml += '<td ' + noteStyle + '>' + this.noteName(columnIndex, lineIndex) + '.' + String(myNoteScore) + '</td>';
			}
			myHtml += '</tr>';
		}
		myHtml += '</table>';
		return myHtml;
	}
	*/

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

	this.swap2ColumnValues_Randon = function(columnIndex) {
		var lineIndex1 = Math.floor(Math.random() * this.values[columnIndex].length);
		var lineIndex2 = Math.floor(Math.random() * this.values[columnIndex].length);
	}

	this.swap2ColumnValues = function(columnIndex, lineIndex1, lineIndex2) {
		var swapValue = this.values[columnIndex][lineIndex1];
		this.values[columnIndex][lineIndex1] = this.values[columnIndex][lineIndex2];
		this.values[columnIndex][lineIndex2] = swapValue;
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
			lineIndex = numberOfLines;
			var swapIndex1 = -1;
			var swapIndex2 = -1;
			while (lineIndex--) {
				// if first one to swap hasn't been set, then chance it will be set
				if (swapIndex1 == -1 && Math.random() < 0.5) swapIndex1 = lineIndex;
				else if (swapIndex1 > -1 && Math.random() < 0.1) {
					swapIndex2 = lineIndex;
					lineIndex = 0;
				}
			}
			if (swapIndex1!= -1 && swapIndex2!= -1) {
				//for debugging:
				//alert('Swapping ' + String(myChangeIndeces[swapIndex1]) + '(' + String(this.values[columnIndex][myChangeIndeces[swapIndex1]]) + ') with ' + String(myChangeIndeces[swapIndex2]) + '(' + String(this.values[columnIndex][myChangeIndeces[swapIndex2]]) + ')');
				this.swap2ColumnValues(columnIndex, myChangeIndeces[swapIndex1], myChangeIndeces[swapIndex2])
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
		this.values[columnIndex].sort(function() {return 0.5 - Math.random()});
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
				document.getElementById('beak_numbers').innerHTML += String(bestBeak) + ', ';
				this.noGos = 0;
				(onBetter)();
				//alert('beak #' + String(i) + ' is best with a score of ' + String(maxScore) + ' after ' + String(attempts) + ' tries!');
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

			(onIterate)();
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

			// _______________________________________________
			// simple note-value based scoring here:


			// _______________________________________________
			// melodic interval scoring here: (can't score first column)
			if (columnIndex>0) {
				myMelodicInterval =  myNoteValue - beakMatrix.values[columnIndex - 1][lineIndex];
				myAbsMelodicInterval = Math.abs(myMelodicInterval);

				switch (myAbsMelodicInterval) {
					case 0:
						beakMatrix.scores[columnIndex][lineIndex] += - 290;
						myScore += -290; // unisons are REALLY BAD!!!!!
						break;
					case 1:
						beakMatrix.scores[columnIndex][lineIndex] += 4;
						myScore += 4; // minor seconds OK
						break;
					case 2:
						beakMatrix.scores[columnIndex][lineIndex] += 5;
						myScore += 5; // major seconds pretty nice
						break;
					case 3:
						// fall-through
					case 4:
						beakMatrix.scores[columnIndex][lineIndex] += 3;
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
						// fall-through
					case 12:
						beakMatrix.scores[columnIndex][lineIndex] += -2;
						myScore += -2;  // tritones not so good
						break; // just a minor deduction for 6ths and octaves
					default:
						beakMatrix.scores[columnIndex][lineIndex] += ((9 - myAbsMelodicInterval) * 4);
						myscore += ((9 - myAbsMelodicInterval) * 4); // make all other intervals greater than a 6th worse and worse as they get bigger
				}
				if (myAbsMelodicInterval > 5 && columnIndex < (numberofColumns - 1)) {
					// for anything greater than a 4th, look at what happens next
					nextMelodicInterval = beakMatrix.values[columnIndex + 1][lineIndex] - myNoteValue;
					if ((myMelodicInterval > 0 && (nextMelodicInterval == -1 || nextMelodicInterval == -2)) || (myMelodicInterval < 0 && (nextMelodicInterval == 1 || nextMelodicInterval == 2))) {
						beakMatrix.scores[columnIndex][lineIndex] += 3;
						myScore +=3;
					} else {
						beakMatrix.scores[columnIndex][lineIndex] += -4;
						myScore += -4;
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
					if (columnIndex>0) {
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
									beakMatrix.scores[columnIndex][lineIndex] += - 50;
									myScore += -50; // parallel octaves are also really bad;
									break;
							}
						}
					}
				// _______________________________________________
				}
			} // end while (for harmonic / voice leading scoring)
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



var myBeak = new beak.matrix();


function beak_loadJSON(filepath) {
	myBeak.loadValuesJSON(filepath);
	myBeak.outputSize();
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

function msg_bang() {

}

function beak_tryagain() {
	if (myBeak.isAlive) {
myBeak.beakBetter(
				[beak.scoring.myScore], 
				beak_showupdate,
				beak_myupdate
			);
		setTimeout(function() {
			myBeak.beakBetter(
				[beak.scoring.myScore], 
				beak_showupdate,
				beak_myupdate
			);	
		}, 200);
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


