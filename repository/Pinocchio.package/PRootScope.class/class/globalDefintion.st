initialize-release
globalDefintion
	<preventExport>
	^ (Array new: 4)
	at: 1 put: (Array with: 'nil' with: 'Nil_Const');
	at: 2 put: (Array with: 'self' with: 'Self');
	at: 3 put: (Array with: 'true' with: 'True_Const');
	at: 4 put: (Array with: 'false' with: 'False_Const');
	yourself