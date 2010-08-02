exporting
asPClass
	"Mapping from STClasses to PClasses which are VM Internals and 
	have NO counterpart in Pharo.
	All the classes which are known both to the VM and Pharo are mapped 
	in 'Object asPClass'"
	<preventExport>
	| dict |
	dict := #( nil ).
	(dict at: 1) ifNil: [ 
		dict at: 1 put:
			((Dictionary new)
				at: PWordsLayout put: nil;
				yourself) ].
	dict := dict at: 1.
	dict at: self ifPresent: [ :uid | 
		uid nil ifTrue: [ ^ PInternalClass newWith: self] ifFalse: [ self halt] ].
	^ super asPClass