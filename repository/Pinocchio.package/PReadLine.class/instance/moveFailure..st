private
moveFailure: direction
	failure ifNotNil: [
		(text onLineBefore: failure + direction)
			ifTrue: [ failure := failure + direction ]]