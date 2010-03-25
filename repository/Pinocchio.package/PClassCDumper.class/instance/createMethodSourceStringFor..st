exporting
createMethodSourceStringFor: aPMethodClosure
	| method |
	method := self methodForSelector: aPMethodClosure selector inClass: self currentClass.
	method ifNil: [ ^ nil ].
	^ super createMethodSourceStringFor: method