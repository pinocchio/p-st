exporting
createMethodSourceStringFor: aPMethodClosure
	| method |
	method := self methodForSelector: aPMethodClosure selector inClass: currentClass.
	method ifNil: [ ^ nil ].
	^ super createMethodSourceStringFor: method