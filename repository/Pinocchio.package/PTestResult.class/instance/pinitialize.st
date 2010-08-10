*Pinocchio-Testing
pinitialize
	<renameExport: #initialize >
	super initialize.
	passed := OrderedCollection new.
	failures := Set new.
	errors := OrderedCollection new.