tests
testStandardTestClassLayout
	| objectClass layout metaLayout |
	objectClass := self exportClass: StandardTestClass.
	layout := objectClass layout.
	layout class should = PObjectLayout.
	layout size should = 3.
	
	metaLayout := objectClass pmetaclass layout.
	metaLayout class should = PObjectLayout.
	metaLayout size should = (5 + 2).
	self checkClassLayoutMembers: metaLayout.
	