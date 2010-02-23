exporting
playChime
	| soundPrototype midiKey pitch soundPlaying notes |
	soundPrototype := FMSound brass1 duration: 9.9.
	notes := #(
		(50 100)
		(52 100)
	).
	notes do: [ :note| 
		pitch := AbstractSound pitchForMIDIKey: note first + 23.
		soundPlaying := soundPrototype soundForPitch: pitch dur: note second loudness: 0.3.
		SoundPlayer playSound: soundPlaying.
		(Delay forMilliseconds: 50) wait.
		soundPlaying stopGracefully.
	]