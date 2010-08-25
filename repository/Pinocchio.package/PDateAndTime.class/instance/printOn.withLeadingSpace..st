squeak protocol
printOn: aStream withLeadingSpace: printLeadingSpaceToo
	"Print as per ISO 8601 sections 5.3.3 and 5.4.1.
	If printLeadingSpaceToo is false, prints either:
		'YYYY-MM-DDThh:mm:ss.s+ZZ:zz:z' (for positive years) or '-YYYY-MM-DDThh:mm:ss.s+ZZ:zz:z' (for negative years)
	If printLeadingSpaceToo is true, prints either:
		' YYYY-MM-DDThh:mm:ss.s+ZZ:zz:z' (for positive years) or '-YYYY-MM-DDThh:mm:ss.s+ZZ:zz:z' (for negative years)
	"
	
	| h m s |

	self printYMDOn: aStream withLeadingSpace: printLeadingSpaceToo.
	aStream << $T.
	self printHMSOn: aStream.
	aStream
		<< (offset positive ifTrue: [$+] ifFalse: [$-]).
	h := offset hours abs.
	h < 10 ifTrue: [ aStream << $0. ].
	h printOn: aStream. aStream << $:.
	m := offset minutes abs.
	m < 10 ifTrue: [ aStream << $0. ].
	m printOn: aStream. 
	offset seconds = 0 ifFalse:
		[ s := offset seconds abs truncated. aStream << $:. s printOn: aStream ]
