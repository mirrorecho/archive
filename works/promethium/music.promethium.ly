\include "music-functions.promethium.ly"
\include "instruments.promethium.ly"
\include "music-ideas.promethium.ly"
\include "music-shards.promethium.ly"

\include "s-allstrikes.promethium.ly"
\include "s-firegiver.promethium.ly"
\include "s-allstrikesB.promethium.ly"
\include "s-booom.promethium.ly"
\include "s-science.promethium.ly"
\include "s-allstrikesE.promethium.ly"
\include "s-blindhope.promethium.ly"
\include "s-science-over.promethium.ly"
\include "s-liver.promethium.ly"
\include "s-allstrikesI.promethium.ly"

allStrikeShow = 1
fireGiverShow = 1
allStrikeBShow = 1
booomShow = 1
sciencePushingShow = 1
allStrikeEShow = 1
blindHopeShow = 1
scienceOverDriveShow = 1
allStrikeIShow = 1



yourLiverEatenByAnEagleShow = 0 %this is now incorporated into scienceOverDrive



globalStart = {
  %\key c \major
  %\remove Bar_engraver
  \numericTimeSignature
  \time 4/4
  \tempo  \markup \fontsize #3.3 { \note #"4" #1 = 120 ca}
  \cadenzaOff
  \engraveGlobal
}

%should remove this:
global = \globalStart


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% FLUTE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fluteOne = \relative c'' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeFluteOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverFluteOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBFluteOne
  \bubbleLine \booomShow \booomUniversal \booomFluteOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingFluteOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEFluteOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeFluteOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveFluteOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleFluteOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIFluteOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% FLUTE 2 (& piccolo)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fluteTwo = \relative c'' {
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeFluteTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverFluteTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBFluteTwo
  \bubbleLine \booomShow \booomUniversal \booomFluteTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingFluteTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEFluteTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeFluteTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveFluteTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleFluteTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIFluteTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% OBOE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
oboeOne = \relative c'' {
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeOboeOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverOboeOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBOboeOne
  \bubbleLine \booomShow \booomUniversal \booomOboeOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingOboeOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEOboeOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeOboeOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveOboeOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleOboeOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIOboeOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% OBOE 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
oboeTwo = \relative c'' {
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeOboeTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverOboeTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBOboeTwo
  \bubbleLine \booomShow \booomUniversal \booomOboeTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingOboeTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEOboeTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeOboeTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveOboeTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleOboeTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIOboeTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CLARINET 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetOne = \relative c'' {
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeClarinetOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverClarinetOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBClarinetOne
  \bubbleLine \booomShow \booomUniversal \booomClarinetOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingClarinetOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEClarinetOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeClarinetOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveClarinetOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleClarinetOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIClarinetOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CLARINET 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetTwo = \relative c'' {
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeClarinetTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverClarinetTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBClarinetTwo
  \bubbleLine \booomShow \booomUniversal \booomClarinetTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingClarinetTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEClarinetTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeClarinetTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveClarinetTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleClarinetTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIClarinetTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% BASSOON 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassoonOne = \relative c, { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeBassoonOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverBassoonOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBBassoonOne
  \bubbleLine \booomShow \booomUniversal \booomBassoonOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingBassoonOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEBassoonOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeBassoonOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveBassoonOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleBassoonOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIBassoonOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% BASSOON 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassoonTwo = \relative c, { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeBassoonTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverBassoonTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBBassoonTwo
  \bubbleLine \booomShow \booomUniversal \booomBassoonTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingBassoonTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEBassoonTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeBassoonTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveBassoonTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleBassoonTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIBassoonTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornOne = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeHornOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverHornOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBHornOne
  \bubbleLine \booomShow \booomUniversal \booomHornOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingHornOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEHornOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeHornOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveHornOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleHornOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIHornOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornTwo = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeHornTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverHornTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBHornTwo
  \bubbleLine \booomShow \booomUniversal \booomHornTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingHornTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEHornTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeHornTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveHornTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleHornTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIHornTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornThree = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeHornThree
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverHornThree
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBHornThree
  \bubbleLine \booomShow \booomUniversal \booomHornThree
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingHornThree
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEHornThree
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeHornThree
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveHornThree
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleHornThree
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIHornThree
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornFour = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeHornFour
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverHornFour
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBHornFour
  \bubbleLine \booomShow \booomUniversal \booomHornFour
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingHornFour
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEHornFour
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeHornFour
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveHornFour
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleHornFour
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIHornFour
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TRUMPET 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trumpetOne = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeTrumpetOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverTrumpetOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBTrumpetOne
  \bubbleLine \booomShow \booomUniversal \booomTrumpetOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingTrumpetOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeETrumpetOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeTrumpetOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveTrumpetOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleTrumpetOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeITrumpetOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TRUMPET 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trumpetTwo = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeTrumpetTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverTrumpetTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBTrumpetTwo
  \bubbleLine \booomShow \booomUniversal \booomTrumpetTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingTrumpetTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeETrumpetTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeTrumpetTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveTrumpetTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleTrumpetTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeITrumpetTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TROMBONE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tromboneOne = \relative c { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeTromboneOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverTromboneOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBTromboneOne
  \bubbleLine \booomShow \booomUniversal \booomTromboneOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingTromboneOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeETromboneOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeTromboneOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveTromboneOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleTromboneOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeITromboneOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TROMBONE 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tromboneTwo = \relative c { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeTromboneTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverTromboneTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBTromboneTwo
  \bubbleLine \booomShow \booomUniversal \booomTromboneTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingTromboneTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeETromboneTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeTromboneTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveTromboneTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleTromboneTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeITromboneTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TUBA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tuba = \relative c, { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeTuba
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverTuba
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBTuba
  \bubbleLine \booomShow \booomUniversal \booomTuba
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingTuba
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeETuba
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeTuba
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveTuba
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleTuba
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeITuba
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TIMPANI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
timpani = \relative c { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeTimpani
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverTimpani
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBTimpani
  \bubbleLine \booomShow \booomUniversal \booomTimpani
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingTimpani
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeETimpani
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeTimpani
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveTimpani
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleTimpani
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeITimpani
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% PERCUSSION 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
percussionOne = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikePercussionOne
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverPercussionOne
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBPercussionOne
  \bubbleLine \booomShow \booomUniversal \booomPercussionOne
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingPercussionOne
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEPercussionOne
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopePercussionOne
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDrivePercussionOne
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEaglePercussionOne
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIPercussionOne
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% PERCUSSION 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
percussionTwo = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikePercussionTwo
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverPercussionTwo
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBPercussionTwo
  \bubbleLine \booomShow \booomUniversal \booomPercussionTwo
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingPercussionTwo
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEPercussionTwo
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopePercussionTwo
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDrivePercussionTwo
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEaglePercussionTwo
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIPercussionTwo
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HarpBottom
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
harpTop = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeHarpTop
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverHarpTop
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBHarpTop
  \bubbleLine \booomShow \booomUniversal \booomHarpTop
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingHarpTop
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEHarpTop
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeHarpTop
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveHarpTop
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleHarpTop
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIHarpTop
}
harpBottom = \relative c { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeHarpBottom
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverHarpBottom
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBHarpBottom
  \bubbleLine \booomShow \booomUniversal \booomHarpBottom
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingHarpBottom
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEHarpBottom
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeHarpBottom
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveHarpBottom
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleHarpBottom
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIHarpBottom
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN I 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinI = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeViolinI
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverViolinI
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBViolinI
  \bubbleLine \booomShow \booomUniversal \booomViolinI
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingViolinI
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEViolinI
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeViolinI
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveViolinI
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleViolinI
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIViolinI
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinII = \relative c' { 
  \globalStart
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeViolinII
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverViolinII
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBViolinII
  \bubbleLine \booomShow \booomUniversal \booomViolinII
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingViolinII
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEViolinII
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeViolinII
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveViolinII
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleViolinII
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIViolinII
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
viola = \relative c' { 
  \globalStart
  \clef alto
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeViola
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverViola
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBViola
  \bubbleLine \booomShow \booomUniversal \booomViola
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingViola
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEViola
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeViola
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveViola
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleViola
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIViola
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CELLO 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cello = \relative c { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeCello
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverCello
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBCello
  \bubbleLine \booomShow \booomUniversal \booomCello
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingCello
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeECello
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeCello
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveCello
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleCello
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeICello
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% BASS 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bass = \relative c { 
  \globalStart
  \clef bass
  \bubbleLine \allStrikeShow \allStrikeUniversal \allStrikeBass
  \bubbleLine \fireGiverShow \fireGiverUniversal \fireGiverBass
  \bubbleLine \allStrikeBShow \allStrikeBUniversal \allStrikeBBass
  \bubbleLine \booomShow \booomUniversal \booomBass
  \bubbleLine \sciencePushingShow \sciencePushingUniversal \sciencePushingBass
  \bubbleLine \allStrikeEShow \allStrikeEUniversal \allStrikeEBass
  \bubbleLine \blindHopeShow \blindHopeUniversal \blindHopeBass
  \bubbleLine \scienceOverDriveShow \scienceOverDriveUniversal \scienceOverDriveBass
  \bubbleLine \yourLiverEatenByAnEagleShow \yourLiverEatenByAnEagleUniversal \yourLiverEatenByAnEagleBass
  \bubbleLine \allStrikeIShow \allStrikeIUniversal \allStrikeIBass
}

