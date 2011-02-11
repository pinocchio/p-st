as yet unclassified
inspectNameOn: aStream
	super inspectNameOn: aStream.
	aStream << '"'.
	lines do: [ :line| line printOn: aStream.] separatedBy: [ aStream << '\n' ].
	aStream << '"'.