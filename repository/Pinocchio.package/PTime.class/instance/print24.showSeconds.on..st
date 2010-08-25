printing
print24: hr24 showSeconds: showSeconds on: aStream 
	"Format is 'hh:mm:ss' or 'h:mm:ss am'  or, if showSeconds is false, 'hh:mm' or 'h:mm am'"

	| h m s |
	h := self hour. m := self minute. s := self second.
	hr24
		ifTrue: 
			[ h < 10 ifTrue: [ aStream << $0 ].
			h printOn: aStream ]
		ifFalse:
			[ h > 12
				ifTrue: [h - 12 printOn: aStream]
				ifFalse: 
					[h < 1
						ifTrue: [ 12 printOn: aStream ]
						ifFalse: [ h printOn: aStream ]]].

	aStream << $:. m < 10 ifTrue: [ aStream << $0]. m printOn: aStream.

	showSeconds ifTrue:
		[aStream << $:. s < 10 ifTrue: [ aStream << $0]. s asInteger printOn: aStream].

	hr24 ifFalse:
		[h < 12 ifTrue: [ aStream << ' am'] ifFalse: [ aStream << ' pm']].