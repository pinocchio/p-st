initialize-release
pglobalDefinition
	<renameExport: #globalDefinition>
	^ (Array new: 3)
		at: 1 put: (Array with: 'nil' with: (PConstant new: nil));
		at: 2 put: (Array with: 'true' with: (PConstant new: true));
		at: 3 put: (Array with: 'false' with: (PConstant new: false));
		yourself