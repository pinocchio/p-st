as yet unclassified
typeNameFor: aPClass
	^ String streamContents: [ :s |
			self pinocchioPackageFor: aPClass on: s.
			s << '_'.
			self pinocchioNameFor: aPClass on: s.
			s << '_Class' ]