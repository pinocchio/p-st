exporting
clearDirectory: dirPath
	| dir |
	self assert: dirPath size > 0.
	self assureExistenceOfPath: dirPath.
	
	dir := FileDirectory on: (FileDirectory default fullNameFor: dirPath).
	dir fileAndDirectoryNames
		do: [:file | dir deleteFileNamed: file]