reading
readCSI
	" Control Sequence Introducer mode "
	| code character action |
	character := readline read.
	action := ($0 <= character and: [ character <= $9 ])
		ifTrue: [ self continueReadCSINumber: character asInteger - $0 asInteger ]
		ifFalse: [
			csi at: character ifAbsent: [
				self fail: character in: 'Control Sequence Introducer' ]].
	action value