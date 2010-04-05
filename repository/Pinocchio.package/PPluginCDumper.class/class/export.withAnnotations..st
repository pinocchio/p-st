exporting
export: aModuleName withAnnotations: aCollection
	^ self new 
		module: aModuleName; 
		annotations: aCollection;
		export.