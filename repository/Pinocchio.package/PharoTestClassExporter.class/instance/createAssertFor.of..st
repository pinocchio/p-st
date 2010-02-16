exporting
createAssertFor: anASTMethod of: aCompiledMethod
	"Creates the corresponding ast object and sends an equals to it"
	| instance result arguments |
	result := self exportClassSend: anASTMethod compiledMethod: aCompiledMethod.
	result == self sclassInstance ifTrue: [
		^ self putAssert: 'result == ((AST_Constant)', testCaseInstance uid, ')->constant'.
	].
	[self createAssertForResult: result.] on: Error do: [ 
		self createEqualsSendFor: result.
		self createAssertForResult: true.
	]