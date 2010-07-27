visiting
visitInternalMetaclass: aMetaclass
	^ 'HEADER(', (self at: aMetaclass pclass), ')'