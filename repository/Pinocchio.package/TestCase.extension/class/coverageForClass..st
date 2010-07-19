*Pinocchio
coverageForClass: cls
	<preventExport>
	"returns the test coverage of all the methods included inherited ones"
	^ self coverageForClass: cls until: ProtoObject