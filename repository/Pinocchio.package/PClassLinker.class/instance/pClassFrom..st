as yet unclassified
pClassFrom: aClass
	sclasses at: aClass ifPresent: [ :aPClass| ^ aPClass ].
	pclasses at: aClass  ifPresent:  [ :aPClass| ^ aPClass ].
	^ PClass newWith: aClass.