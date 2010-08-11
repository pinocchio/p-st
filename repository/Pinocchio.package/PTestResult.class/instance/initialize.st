*Pinocchio-Testing
initialize
	<preventExport>
	super initialize.
	passed := OrderedCollection new.
	failures := Set new.
	errors := OrderedCollection new.
	timeStamp := TimeStamp now