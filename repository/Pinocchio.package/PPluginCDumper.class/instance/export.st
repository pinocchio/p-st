exporting
export
	| fileStream |
	stream := PIndentableWriteStream on: (String new: 500).
	
	self writeAutoGenFileHeader.
	self writePrimitives.
	self writePlugin.
	
	fileStream := self fileStream.
	fileStream << stream.
	fileStream close.
	