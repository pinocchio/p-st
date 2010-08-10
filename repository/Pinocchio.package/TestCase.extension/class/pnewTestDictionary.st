*Pinocchio
pnewTestDictionary
	<renameExport: #newTestDictionary >
	^ Dictionary new at: #timeStamp put: 0;
		at: #passed put: Set new;
		at: #failures put: Set new;
		at: #errors put: Set new;
		yourself
		