exporting
export
	self prepareStream.
	self writePrimitives.
	self writePlugin.
	stream close.