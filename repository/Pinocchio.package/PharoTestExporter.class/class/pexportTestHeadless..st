exporting
pexportTestHeadless: aRestrictingSet
	| exporter |
	exporter := PharoTestExporter new.
	exporter restrictExportOn: aRestrictingSet;
		export: self tests.