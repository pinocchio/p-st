I export C code from PharoTestCasess for the Pinocchio VM.
I use the PharoExporter for exporting the needed classes.

Example Usage:
	(PharoTestExporter exportTestClass: ATestClass) 
		export: 'oufFile.c'
	