private
addLine: aString
	PFile stdout lf.
	self indent.
	PFile stdout: aString.