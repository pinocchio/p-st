tests
testObjectExport
	| objectClass package |
	objectClass := self exportClass: Object.
	objectClass class should = PInternalClass.
	objectClass sclass should = Object.
	objectClass superclass should = PNil nil.
	objectClass uid should = 'Object_Class'.
	objectClass name asSymbol should = #Object.
	objectClass layout class should = PObjectLayout.
	objectClass pmetaclass class should = PInternalMetaclass.
	package := objectClass package.
	package packageName asSymbol should = #Objects.
	package parent packageName asSymbol should = #Kernel.
	(package includesKey: #Object) should be = true.
	(package parent includesKey: #Objects) should be = true.
	(package parent parent includesKey: #Kernel) should be = true