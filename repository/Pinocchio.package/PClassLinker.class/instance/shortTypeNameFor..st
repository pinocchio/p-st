as yet unclassified
shortTypeNameFor: aPClass
	^ String streamContents: [ :s |
			self pinocchioNameFor: aPClass on: s.
			s << '_Class' ]