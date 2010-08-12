writing
writeAll: aCollection until: end
	self primWrite: fileID from: aCollection asString startingAt: 1 count: end.