exporting
pexportTest: aRestrictingSet 
	| exporter done|
	done := false.
	exporter := PharoTestExporter new.
	[	exporter restrictExportOn: aRestrictingSet;
			export: self tests.
		done := true.
	] fork.

	['Carving Pinocchio' 
		displayProgressAt: Display center
		from: 0 to: 1000
		during: [:bar ||p|
			[done] whileFalse: [
				bar value: ((exporter progress min: 1) * 1000) rounded.
				(Delay forMilliseconds: 2) wait.
			].
		self playChime.
	]] fork.