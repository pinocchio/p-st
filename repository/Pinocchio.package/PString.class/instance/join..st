splitjoin
join: aCollection
	^ String streamContents: [ :stream | 
		aCollection do: [ :each | 
				stream nextPutAll: each asString ] 
			separatedBy: [ stream nextPutAll: self ]	"NB: coerce elements to Strings" ]