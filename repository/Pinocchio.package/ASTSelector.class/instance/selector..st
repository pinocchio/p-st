accessing
selector: anObject
	| string |
	selector := anObject.
	string := selector asString.
	string size > 1 ifTrue: [ (string at: string size - 1) should not = ':' ]