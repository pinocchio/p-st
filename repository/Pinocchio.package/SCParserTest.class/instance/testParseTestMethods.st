nontests
testParseTestMethods
	<preventExport>
	<temps: 6 annotations: 1 statements: 3>
	| parser string result code annotations annotation |
	parser := scparser method.
	self class methodDict keys do: [ :key | 
			Transcript show: key; cr.
			code := self class sourceCodeAt: key.
			string := PEGStringScanner on: code separator: scparser separator.
			result := parser match: string.
			result class should = ASTMethod.
			annotations := result annotations select:[ :ann | 
				ann class = ASTKeywordAnnotation 
					and: [ ann keywords asArray = ((Array new: 3)
							at: 1 put: #temps;
							at: 2 put: #annotations;
							at: 3 put: #statements;
							yourself) ] ].
			annotations size = 1 ifTrue:
					[ annotation := annotations first.
					result temporaries size = annotation arguments first asInteger.
					result annotations size = (annotation arguments at: 2) asInteger.
					result statements size = (annotation arguments at: 3) asInteger ].
			"string atEnd should be true."
			result 
	]	"inspect"