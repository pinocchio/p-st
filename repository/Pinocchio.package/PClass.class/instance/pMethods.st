pharo-exporter
pMethods
	"instead of returning the cls's methods I return my methods for exporting"
	<preventExport>
	methods := self extractMethods.
	^ self filterExportMethodSelectors: methods from: self methodProvider