visitor
visitObjectLayout: aPObjectLayout
	| element |
	aPObjectLayout size = 0 ifTrue: [
		^ aPObjectLayout uid: 'empty_object_layout'.
	].

	1 to: aPObjectLayout size do: [ :index|
		self visit: (aPObjectLayout at: index).
	].

	(self currentClass isKindOf: PInternalClass) ifTrue: [ ^ self. ].
	self putRaw: aPObjectLayout 
		with: 'create_layout_with_vars(Type_ObjectLayout, ',
										 aPObjectLayout size asString ,')'.
	1 to: aPObjectLayout size do: [ :index|
		element := aPObjectLayout at: index.
		self visit: element.
		stream nextPutAll: '((Type_Array)';
			nextPutAll: aPObjectLayout uid; 
			nextPutAll: (')->values[', (index - 1) asString, '] = ');
			nextPutAll: element uid;
			nextPutAll: '; // '; 
			nextPutAll: element name;
			nextPutAll: ' '; cr.
	].

	globals add: aPObjectLayout.
	