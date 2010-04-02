accessing
canWrite
	^ (self mode = #w) or: [self canReadAndWrite ].