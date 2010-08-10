visitor
visitObjectLayout: aPObjectLayout
	| element |
	aPObjectLayout size = 0 ifTrue: [ ^ aPObjectLayout].
	1 to: aPObjectLayout size do: [ :index | 
			self visit: (aPObjectLayout at: index) asPObject ].
	currentClass customLayout ifTrue: [ ^ self ].
	self putRaw: aPObjectLayout with: [ :s| 
			s << 'create_layout_with_vars(ObjectLayout_Class, ' << aPObjectLayout size asString << ')'].
	aPObjectLayout withIndexDo: [ :each :index | 
			stream
				<< '((Array)' << (self idFor: aPObjectLayout ) << ')->values[' 
				<< (index - 1) asString << '] = ' << (self idFor: each asPObject)
				<< '; // ' << each name << ' '.
			stream lf ].
	self addGlobal: aPObjectLayout