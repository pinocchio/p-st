*Pinocchio
cEscaped
	| dictArray dict |
	dictArray := Array with: nil with: #'.'.
	dict := dictArray at: 1.
	dict ifNil: [ dict := PDictionary new.
			dict at: Character cr put: '\n'.
			dict at: Character lf put: '\n'.
			dict at: Character tab put: '\t'.
			dict at: $\ put: '\\'.
			dict at: $' put: '\'''.
			dict at: $" put: '\"'.
			dictArray at: 1 put: dict ].
	^ dict at: self ifAbsent: [ ^ self asString ]