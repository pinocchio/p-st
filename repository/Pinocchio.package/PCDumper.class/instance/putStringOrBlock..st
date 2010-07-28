convenience
putStringOrBlock: aStringOrBlock
	aStringOrBlock class == BlockClosure ifTrue: [
		^ aStringOrBlock value: stream.].
	stream << aStringOrBlock.