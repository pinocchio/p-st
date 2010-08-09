pharo-exporter
extractMethods
	<preventExport>
	^ self extractMethods: self methodProvider pMethods from: self methodProvider.