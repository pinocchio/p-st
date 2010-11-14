as yet unclassified
selectors
	| selectors |
	selectors := OrderedCollection new.
	selectors add: #benchAtPut.
	selectors add: #benchIncludes.
	selectors add: #benchIncludesKey.
	selectors add: #benchDo.
	^ selectors.
	"^ #( benchAtPut )"