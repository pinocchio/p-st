inspecting
inspectLabelOn: aStream
	aStream << (name ifNil: [ selector ])