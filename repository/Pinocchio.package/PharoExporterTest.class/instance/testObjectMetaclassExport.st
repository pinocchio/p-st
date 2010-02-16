tests
testObjectMetaclassExport
	| object metaclass |
	object := self exportClass: Object.
	object class should = PInternalClass.
	metaclass := object pmetaclass.
	metaclass class should = PInternalMetaclass.
	