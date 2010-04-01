interpreting
visitSend: aSend
	| result |
	results position = 1 ifTrue: [
		localIndent := localIndent + 1.
		result := super visitSend: aSend.
		localIndent := localIndent - 1.
		^ result
	].
	^ super visitSend: aSend