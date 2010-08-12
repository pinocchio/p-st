as yet unclassified
pInternalClassFrom: aClass
	classes at: aClass  ifPresent:  [ :aPClass| ^ aPClass ].
	^ (self link: aClass to: aClass) declareClass: true