convenience
nativeNameFromAnnotation: anAnnotation
	| selector |
	selector := anAnnotation y at: 1.
	selector := (selector copyReplaceAll: #: with: #_).
	^ pluginName, '_', selector asCIdentifier 