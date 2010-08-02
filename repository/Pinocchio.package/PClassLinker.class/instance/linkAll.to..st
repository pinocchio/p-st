as yet unclassified
linkAll: aList to: aPClass
	| anInternalPClass |
	anInternalPClass := self link: aList first to: aPClass.
	aList do: [ :stClass| sclasses at: stClass put: anInternalPClass].
	^ anInternalPClass.