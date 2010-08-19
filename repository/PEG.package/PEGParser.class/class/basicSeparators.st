instance creation
basicSeparators
	" separator := nil. separators := nil "
	^ separators ifNil: [
		separators := ((String new: 4)
							at: 1 put: Character space;
							at: 2 put: Character cr;
							at: 3 put: Character lf;
							at: 4 put: Character tab;
							yourself) asPEGChoice ]