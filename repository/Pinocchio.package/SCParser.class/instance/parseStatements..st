parsing
parseStatements: aString
	^ self parse: aString withParser: self statements.