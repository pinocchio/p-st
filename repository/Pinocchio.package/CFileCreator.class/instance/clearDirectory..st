exporting
clearDirectory: dirPath
	| dir |
	"if we just want to export certain classes keep all the existing C sources!"
	restrictionSet isEmpty ifFalse: [ ^ self].
	
	self assert: dirPath size > 0.
	self assureExistenceOfPath: dirPath.
	
	dir := FileDirectory on: (FileDirectory default fullNameFor: dirPath).
	dir fileAndDirectoryNames
		do: [:file | dir deleteFileNamed: file]