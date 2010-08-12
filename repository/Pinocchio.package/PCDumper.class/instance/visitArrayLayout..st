visitor
visitArrayLayout: aPArrayLayout
	| element |
	aPArrayLayout size = 0 ifTrue: [ ^ aPArrayLayout ].
	1 to: aPArrayLayout size do: [ :index | 
			self visit: (aPArrayLayout at: index) ].
	currentClass customLayout ifTrue: [ ^ self ].
	self putRaw: aPArrayLayout with: [ :s| 
			s << 'create_layout_with_vars(ArrayLayout_Class, ' << aPArrayLayout size asString << ')'].
	aPArrayLayout withIndexDo: [ :each :index | 
			stream << '((Array)' << (self idFor: aPArrayLayout) << ')->values[' 
					<< (index - 1) asString << '] = ' << (self idFor: each) <<';'; lf ].
	self addGlobal: aPArrayLayout