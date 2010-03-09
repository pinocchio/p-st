accessing
at: key
	<preventExport>
	^ self at: key ifAbsent: [self errorKeyNotFound: key]