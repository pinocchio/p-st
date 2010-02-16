exporting
pexportTest
	| exporter done|
	done := false.
	exporter := PharoTestExporter new.
	[	exporter export: self tests.
		done := true.
	] fork.

	['Exporting Pharo' 
		displayProgressAt: Display center
		from: 0 to: 1000
		during: [:bar ||p|
			[done] whileFalse: [
				bar value: ((exporter progress min: 1) * 1000) rounded.
				(Delay forMilliseconds: 2) wait.
			]
	]] fork.