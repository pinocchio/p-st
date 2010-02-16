instance creation
basicSeparators
	separators ifNil: [ separators := (Character space asPEG) | Character tab <= Character cr <= Character lf ].
	^ separators  " Separators := nil "