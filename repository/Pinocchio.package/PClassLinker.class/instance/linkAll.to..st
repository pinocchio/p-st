as yet unclassified
linkAll: aList to: aPClass
	| anInternalPClass |
	anInternalPClass := self link: aList first to: aPClass.
	aList do: [ :stClass| classes at: stClass put: anInternalPClass].
	^ anInternalPClass.