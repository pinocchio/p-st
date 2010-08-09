as yet unclassified
pClassFrom: aClass
	classes at: aClass ifPresent: [ :aPClass| ^ aPClass ].
	^ PClass newWith: aClass.