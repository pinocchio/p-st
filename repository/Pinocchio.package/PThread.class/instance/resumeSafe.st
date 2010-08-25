as yet unclassified
resumeSafe

	(PThread current = self) ifFalse: [
		PThread threads remove: PThread current.
		PThread threads addFirst: PThread current.
		self resume.			
	]