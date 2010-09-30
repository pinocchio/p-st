pharo-exporting
accept: visitor
	<preventExport>
	^ visitor visitThreadedCode: self