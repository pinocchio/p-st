printing
warnOn: aStream
	aStream << self message << ': '.
	1 to: index - 1 do: [ :i |
		aStream << (path at: i).
		aStream << $. ].
	aStream << '--> '.
	aStream << (path at: index).
	index + 1 to: path size do: [ :i |
		aStream << $..
		aStream << (path at: i) ]