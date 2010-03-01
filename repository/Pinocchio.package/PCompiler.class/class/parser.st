accessing
parser
	parser ifNil: [
		parser :=  SCParser new method.
	].
	^ parser