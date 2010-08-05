*Pinocchio
quickRehashAllSets  "Set rehashAllSets"
	<preventExport>
	| insts |
	self withAllSubclassesDo:
		[:c |
			insts := c allInstances.
			(insts isEmpty or: [c = MethodDictionary]) ifFalse:
			['Rehashing instances of ' , c name
				displayProgressAt: Sensor cursorPoint
				from: 1 to: insts size
				during: [:bar | 1 to: insts size do: [:x | bar value: x. (insts at: x) rehash]]
			]
		]