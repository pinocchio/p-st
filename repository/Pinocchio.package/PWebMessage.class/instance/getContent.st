private
getContent
	"Reads available content and returns it."

	| length size buffer |
	length := self contentLength.
	size := length ifNil:[1000].
	buffer := (String new: size) writeStream.
	"buffer := ((stream isBinary ifTrue:[ByteArray] ifFalse:[ByteString]) 
		new: size) writeStream."
	self streamFrom: stream to: buffer size: length progress: nil.
	^buffer position = size
		ifTrue: [ buffer originalContents ]
		ifFalse: [ buffer contents ]