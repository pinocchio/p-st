splitjoin
join: aCollection 
	^ String
		streamContents: [:stream | aCollection
				do: [:each | stream nextPutAll: each asString] "NB: coerce elements to Strings"
				separatedBy: [stream nextPutAll: self]]