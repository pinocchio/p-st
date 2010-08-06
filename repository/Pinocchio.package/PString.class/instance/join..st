splitjoin
join: aCollection
	^ String streamContents: [ :stream | 
		aCollection do: [ :each | stream << each asString ] 
			separatedBy: [ stream << self ]]