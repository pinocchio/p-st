initialize-release
globalDefintion
	^ (Array new: 4)
	at: 1 put: #('nil' 'Nil_Const');
	at: 2 put: #('self' 'Self');
	at: 3 put: #('true' 'True_Const');
	at: 4 put: #('false' 'False_Const');
	yourself