running
run: aResult 
	self tests do: [:each | 
		each run: aResult].
			