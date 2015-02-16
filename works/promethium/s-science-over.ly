
%{
scienceOverDriveUniversal = { \bar "||" \mark "G"  s1*8}
scienceOverStartRest = {R1 | R1 | R1 | R1 | R1 | R1 |} 
%}

%for now, make this nothing!
scienceOverDriveUniversal = { \bar "||" s1*2}
scienceOverStartRest = {} 

scienceOverDriveRest = {
  \scienceOverStartRest 
  \climeUpRest
}


scienceOverDriveFluteOne = {  \scienceOverStartRest  \climeUpFluteOne }
scienceOverDriveFluteTwo = {  \scienceOverStartRest  \climeUpFluteTwo }
scienceOverDriveOboeOne = \scienceOverDriveRest
scienceOverDriveOboeTwo = \scienceOverDriveRest
scienceOverDriveClarinetOne = \scienceOverDriveRest
scienceOverDriveClarinetTwo = \scienceOverDriveRest
scienceOverDriveBassoonOne = {\scienceOverDriveRest}
scienceOverDriveBassoonTwo = \scienceOverDriveRest
scienceOverDriveHornOne = \scienceOverDriveRest
scienceOverDriveHornTwo = \scienceOverDriveRest
scienceOverDriveHornThree = \scienceOverDriveRest
scienceOverDriveHornFour = \scienceOverDriveRest
scienceOverDriveTrumpetOne = {  \scienceOverStartRest  \climeUpTrumpetOne }
scienceOverDriveTrumpetTwo = {  \scienceOverStartRest  \climeUpTrumpetTwo }
scienceOverDriveTromboneOne = \scienceOverDriveRest
scienceOverDriveTromboneTwo = \scienceOverDriveRest
scienceOverDriveTuba = \scienceOverDriveRest
scienceOverDriveTimpani = \scienceOverDriveRest
scienceOverDrivePercussionOne = \scienceOverDriveRest
scienceOverDrivePercussionTwo = \scienceOverDriveRest

scienceOverDriveHarpTop = \scienceOverDriveRest
scienceOverDriveHarpBottom = \scienceOverDriveRest

scienceOverDriveViolinI = {  \scienceOverStartRest \climeUpHighGliss}
scienceOverDriveViolinII = {  \scienceOverStartRest \climeUpHighGliss}
scienceOverDriveViola = {  \scienceOverStartRest \climeUpMidGliss}
scienceOverDriveCello = {  \scienceOverStartRest \climeUpMidGliss}
scienceOverDriveBass = {  \scienceOverStartRest \climeUpLowGliss}