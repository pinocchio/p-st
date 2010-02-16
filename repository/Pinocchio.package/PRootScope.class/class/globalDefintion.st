initialize-release
globalDefintion
	^ (Array new: 10)
	at: 1 put: #('nil' 'Nil_Const');
	at: 2 put: #('self' 'Self');
	at: 3 put: #('true' 'True_Const');
	at: 4 put: #('false' 'False_Const');
	at: 5 put: #('Metaclass' 'Metaclass_Reference');
	at: 6 put: #('Behaviour' 'Behaviour_Reference');
	at: 7 put: #('Object' 'Type_Object_Reference');
	at: 8 put: #('String' 'Type_String_Reference');
	at: 9 put: #('True' 'True_Reference');
	at: 10 put: #('False' 'False_Reference');
	yourself