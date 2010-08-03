pharo-exporter
filterExportMethodSelectors: anArray from: aClass
	^ anArray select: [ :method | 
		method pragmas 
			allSatisfy: [ :pragma | pragma keyword ~= #preventExport ]].