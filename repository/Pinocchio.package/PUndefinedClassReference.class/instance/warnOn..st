printing
warnOn: aStream
	aStream << 'Reference to undefined class in package '.
	reference package printOn: aStream.
	reference package keysAndValuesDo: [ :key :value |
		value == reference ifTrue: [
			^ aStream << ': ' << key ]]