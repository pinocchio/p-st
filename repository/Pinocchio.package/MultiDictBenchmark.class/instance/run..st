as yet unclassified
run: selector
	stResults at: selector put: Dictionary new.
	pResults at: selector put: Dictionary new.
	
	self sizes do: [ :size| self run: selector dictSize: size].