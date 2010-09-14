accessing
contentWithProgress: progressBlock
	"Reads and caches available content and returns it."

	^content ifNil:[	| length |
		length := self contentLength.
		"DG: Not sure what to do about Byte/String Arrays, replacing both with PString"
		"content := (stream isBinary ifTrue:[ByteArray] ifFalse:[ByteString]) "
		content := String
			new: (length ifNil:[1000])
			streamContents:[:s| self streamFrom: stream to: s size: length progress: progressBlock]].