tests
testObjectLayout
	| objectClass metaLayout |
	objectClass := self exportClass: Object.
	objectClass layout class should = PObjectLayout.
	objectClass layout size should = 0.
	
	metaLayout := objectClass pmetaclass layout.
	metaLayout class should = PObjectLayout.
	metaLayout size should = 5.
	self checkClassLayoutMembers: metaLayout.
	
	