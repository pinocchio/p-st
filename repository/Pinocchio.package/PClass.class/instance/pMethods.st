pharo-exporter
pMethods
	<preventExport>
	methods := sclass pMethods.
	methods = #all ifTrue: [
		methods := sclass methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		methods := sclass organization listAtCategoryNamed: methods
	].
	^ sclass filterExportMethodSelectors: methods.