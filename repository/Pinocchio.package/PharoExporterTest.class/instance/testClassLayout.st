tests
testClassLayout
	| objectClass layout metaLayout |
	objectClass := self exportClass: Class.
	layout := objectClass layout.
	layout class should = PObjectLayout.
	layout size should = 5.
	self checkClassLayoutMembers: layout.
	
	metaLayout := objectClass pmetaclass layout.
	metaLayout class should = PObjectLayout.
	metaLayout size should = 5.
	self checkClassLayoutMembers: metaLayout.
	
	
	