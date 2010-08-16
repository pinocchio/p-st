creation
reset

	current notNil ifTrue: [
		[current tearDown] ensure: [
			current := nil]]
			