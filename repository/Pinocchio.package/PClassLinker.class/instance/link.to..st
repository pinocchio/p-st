as yet unclassified
link: anSTClass to: aPClass
	| anInternalClass|
	anInternalClass := PInternalClass newWith: anSTClass exporting: aPClass.
	classes at: anSTClass put: anInternalClass.
	classes at: aPClass put: anInternalClass.
	^ anInternalClass.