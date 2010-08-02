as yet unclassified
link: anSTClass to: aPClass uid: aSymbol
	| uid  anInternalClass|
	uid should not be isNil.
	uid := aSymbol asSymbol.
	anInternalClass :=  PInternalClass newWith: anSTClass 
					exporting: aPClass
					uid: uid.
	sclasses at: anSTClass put: anInternalClass.
	"reverse link with the PClass as a Key"
	pclasses at: aPClass put: anInternalClass.
	^ anInternalClass.