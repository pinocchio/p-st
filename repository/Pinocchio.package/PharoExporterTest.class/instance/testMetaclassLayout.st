tests
testMetaclassLayout
	| objectClass layout metaLayout |
	objectClass := self exportClass: Metaclass.
	layout := objectClass layout.
	layout class should = PObjectLayout.
	layout size should = 3.
	self checkBehaviorLayoutMembers: layout.
	
	metaLayout := objectClass pmetaclass layout.
	metaLayout class should = PObjectLayout.
	metaLayout size should = 5.
	self checkClassLayoutMembers: metaLayout.
	
	
	