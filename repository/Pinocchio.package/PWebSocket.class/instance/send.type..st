read/write
send: data type: type
	"Writes one frame worth of data using the given frame type"

	"Frame type"
	stream nextPut: (PCharacter value: type).
	type < 128 ifTrue:[
		"Frame type < 128: UTF-8 encoded text with 0xFF frame delimiter"
		stream nextPutAll: data "squeakToUtf8".
		stream nextPutAll: (PCharacter value: 255).
	] ifFalse:[ | prefix length |
		"TODO: support for binary data"
		self error: 'Binary data not supported'.
		"Frame type >= 128: Binary data with length prefix"
		"prefix := String new.
		length := data size.
		[length > 127]  whileTrue:[
			prefix := prefix copyWith: prefix \\ 128.
			length := length // 128.
		].
		prefix := prefix copyWith: length.
		stream nextPutAll: prefix reversed.
		stream nextPutAll: data.
		stream flush."
	].
	stream flush.
