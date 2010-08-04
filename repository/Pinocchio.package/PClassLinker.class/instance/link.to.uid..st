as yet unclassified
link: anSTClass to: aPClass uid: aSymbol
	| uid  anInternalClass|
	uid := aSymbol asSymbol.
	uid ifNil: [ self error ].
	anInternalClass := PInternalClass newWith: anSTClass 
					exporting: aPClass
					uid: uid.
	classes at: anSTClass put: anInternalClass.
	classes at: aPClass put: anInternalClass.
	^ anInternalClass.