pharo-exporter
extractClassMethods
	<preventExport>
	^ self extractMethods: self methodProvider pClassMethods from: self methodProvider class.