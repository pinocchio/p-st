*Pinocchio
evalStrings
	<preventExport>
	   "Allows you to construct literal arrays.
    #(true false nil '5@6' 'Set new' '''text string''') evalStrings
    gives an array with true, false, nil, a Point, a Set, and a String
    instead of just a bunch of Symbols"

    ^ self collect: [:each | | item |
        item := each.
        (each isString and: [each isSymbol not]) ifTrue: [
			item := Compiler evaluate: each].
        each class == Array ifTrue: [item := item evalStrings].
        item]