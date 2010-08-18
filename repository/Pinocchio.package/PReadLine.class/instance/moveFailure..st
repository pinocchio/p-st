private
moveFailure: direction
	failure ifNotNil: [
		failure + direction > text position
			ifTrue: [
				failure := failure + direction ]]