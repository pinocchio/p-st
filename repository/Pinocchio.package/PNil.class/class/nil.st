accessing
nil
	<preventExport>
	nilInstance ifNil: [nilInstance := PNil new].
	^ nilInstance