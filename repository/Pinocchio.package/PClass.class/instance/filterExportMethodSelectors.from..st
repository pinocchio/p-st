pharo-exporter
filterExportMethodSelectors: anArray from: aClass
	<preventExport>
	^ anArray select: [ :method | 
		method pragmas 
			allSatisfy: [ :pragma | pragma keyword ~= #preventExport ]].