as yet unclassified
pClassFrom: aClass
	^ classes at: aClass ifAbsentPut: [ PClass newWith: aClass ]