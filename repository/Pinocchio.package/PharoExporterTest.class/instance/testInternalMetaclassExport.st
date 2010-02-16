tests
testInternalMetaclassExport
	| classes exported |
	classes := OrderedCollection new.
	classes add: Object; 
		add: Class;
		add: Metaclass; 
		add: Behavior;
		add: False; 
		add: True;
		add: String;
		add: Symbol;
		add: Character;
		add: SmallInteger.
		
	classes do: [ :each|
		"All Internal Objects have an internal class and an internal metaclass"
		exported := self exportClass: each.
		exported class should = PInternalClass.
		exported sclass should = each.
		exported pmetaclass class should = PInternalMetaclass.
		exported sclass should = each.
		exported smetaclass should = each class.
	]