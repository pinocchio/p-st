pharo-exporter
pClassMethods
	<preventExport>
	methods := self methodProvider pClassMethods.
	methods = #all ifTrue: [
		methods := self methodProvider class methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		methods := self methodProvider class organization listAtCategoryNamed: methods
	].
	
	^ self methodProvider class filterExportMethodSelectors: methods.