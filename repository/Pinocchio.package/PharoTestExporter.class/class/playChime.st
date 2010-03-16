exporting
playChime
	| soundPrototype dur notes sound pitch |
	SoundPlayer initialize.
	soundPrototype := FMSound brass1 duration: 0.1.
	dur := 0.4.
	notes := {
		{50. dur/4}.
		{51. dur/4}.
		{55. dur/4}.
		{59. dur/3*2}.
		{1. dur/8}.
		{50. dur/4}.
		{59. dur}.
	}.
	sound := SequentialSound new.
	notes do: [ :note| 
		pitch := AbstractSound pitchForMIDIKey: note first + 16.
		sound add: (soundPrototype soundForPitch: pitch dur: note second loudness: 1).
	].
	SoundPlayer playSound: sound.
