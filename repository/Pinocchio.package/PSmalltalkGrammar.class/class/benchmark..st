as yet unclassified
benchmark: aParser
	"self benchmark: PPSmalltalkGrammar new"
	"self benchmark: PPSmalltalkParser new"
	"self benchmark: RBParser '487243 characters/sec'"
	"self benchmark: SCParser new"
	<ignoreForCoverage>
	<preventExport>
	| sources |
	sources := OrderedCollection new.
	PObject withAllSubclassesDo: [ :class |	class selectors do: [ :selector |	sources add: (class sourceCodeAt: selector) ] ].
	^ self benchmark: aParser sources: sources asArray