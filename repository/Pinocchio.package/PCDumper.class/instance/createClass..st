convenience
createClass: aPinocchioClass
	| classLayout |
	classLayout := aPinocchioClass pmetaclass layout.
	self currentClass: aPinocchioClass pmetaclass.
	self visit: classLayout.
	self currentClass: aPinocchioClass.
	stream lf.
	self visit: aPinocchioClass name.
	self visit: aPinocchioClass layout.
	(aPinocchioClass isKindOf: PInternalClass)
		ifTrue: [ ^ self createInternalClass: aPinocchioClass ].
	self putRaw: aPinocchioClass with: [ :s | 
			s << 'new_Class(' << (self idFor: aPinocchioClass superclass) << ', ' 
				<< (self idFor: classLayout) << $) ].
	stream << (self idFor: aPinocchioClass) 
		<< '->layout = ' << (self idFor: aPinocchioClass layout) << $;; lf.
	stream << (self idFor: aPinocchioClass) 
		<< '->name = ' << (self idFor: aPinocchioClass name) << $;; lf.