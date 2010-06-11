*Pinocchio
smallPinocchioIcon
	"Private - Generated method"
	^ Icons
			at: #'smallPinocchioIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallPinocchioIconContents readStream) ].