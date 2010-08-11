private
addLine: aString
	stream lf.
	self indent.
	stream << aString.