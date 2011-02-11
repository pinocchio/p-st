private
printOn: aStream 
	aStream << $(.
	start printOn: aStream.
	aStream << $D.
	duration printOn: aStream.
	aStream << $).
