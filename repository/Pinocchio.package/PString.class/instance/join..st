splitjoin
join: aCollection
	<preventExport>
	^ String
		streamContents:
			[ :stream | aCollection do: [ :each | stream nextPutAll: each asString ] separatedBy: [ stream nextPutAll: self ]	"NB: coerce elements to Strings" ]