visitor
visitArrayLayout: aPArrayLayout 
	| element |
	aPArrayLayout size = 0 ifTrue: [
		^ aPArrayLayout uid: 'empty_array_layout'.
	].
	
	1 to: aPArrayLayout size do: [ :index|
		self visit: (aPArrayLayout at: index).
	].

	(self currentClass isKindOf: PInternalClass) ifTrue: [ ^ self. ].
	
	self putRaw: aPArrayLayout 
		with: 'create_layout_with_vars(Type_ArrayLayout, ',
				aPArrayLayout size asString ,')'.
			
	1 to: aPArrayLayout size do: [ :index|
		stream nextPutAll: '((Type_Array)';
			nextPutAll: aPArrayLayout uid; 
			nextPutAll: (')->values[', (index - 1) asString, '] = ');
			nextPutAll: (aPArrayLayout at: index) uid;
			nextPutAll: ';' ; cr.
	].

	globals add: aPArrayLayout.