initialize-release
globalDefinition
	<preventExport>
	^ (Array new: 3)
		at: 1 put: (Array with: 'nil' with: 'nil_Const' with: nil);
		at: 2 put: (Array with: 'true' with: 'true_Const' with: true);
		at: 3 put: (Array with: 'false' with: 'false_Const' with: false);
		yourself