declarations
declareAll: aCollection
	aCollection ifNotNil: [ aCollection do: [ :element | self declare: element ]]