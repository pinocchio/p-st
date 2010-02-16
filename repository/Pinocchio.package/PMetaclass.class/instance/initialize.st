pharo-exporter
initialize
	<preventExport>
	super initialize.
	instVarNames := OrderedCollection 
		with: #layout 
		with: #super 
		with: #methods 
		with: #name 
		with: #package.