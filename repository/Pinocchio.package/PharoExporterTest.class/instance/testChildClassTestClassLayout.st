tests
testChildClassTestClassLayout
	| objectClass layout metaLayout |
	objectClass := self exportClass: ChildClassTestClass.
	layout := objectClass layout.
	layout class should = PObjectLayout.
	layout size should = (1+1).
	
	metaLayout := objectClass pmetaclass layout.
	metaLayout class should = PObjectLayout.
	metaLayout size should = (5+2+1).
	self checkClassLayoutMembers: metaLayout.
	