tests
testStandardVariableTestClassLayout
	| objectClass layout metaLayout |
	objectClass := self exportClass: StandardVariableTestClass.
	layout := objectClass layout.
	layout class should = PArrayLayout.
	layout size should = 3.
	
	metaLayout := objectClass pmetaclass layout.
	metaLayout class should = PObjectLayout.
	metaLayout size should = 5.
	self checkClassLayoutMembers: metaLayout.