pharo-exporter
pClassMethods
	<preventExport>
	methods := self extractClassMethods.
	^ self filterExportMethodSelectors: methods from: self methodProvider class.