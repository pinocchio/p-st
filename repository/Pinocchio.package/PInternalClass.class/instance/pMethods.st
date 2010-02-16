pharo-exporter
pMethods
	<preventExport>
	"instead of returning the cls's methods I return my methods for exporting"
	methods := self methodProvider pMethods.
	methods = #all ifTrue: [
		methods := self methodProvider methods collect: #selector. 
	].
	methods isSymbol ifTrue: [
		methods := self methodProvider organization listAtCategoryNamed: methods
	].
	^ self methodProvider filterExportMethodSelectors: methods.