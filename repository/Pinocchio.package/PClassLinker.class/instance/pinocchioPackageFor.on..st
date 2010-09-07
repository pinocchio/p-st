as yet unclassified
pinocchioPackageFor: aPClass on: s
	aPClass splitCategory
		do: [ :each | s << each ]
		separatedBy: [ s << '_' ]