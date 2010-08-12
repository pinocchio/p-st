convenience
createInternalClass: aPinocchioClass
	stream << 'Class_set_superclass(' << (self idFor: aPinocchioClass) << ', ' 
		<< (self idFor: aPinocchioClass superclass); << ');'; lf.
	aPinocchioClass customLayout ifFalse: [ 
			stream << (self idFor: aPinocchioClass) 
					<< '->layout = ' << (self idFor: aPinocchioClass layout) << $;; lf ].
	stream << (self idFor: aPinocchioClass pmetaclass)
		 << '->layout = ' << (self idFor: aPinocchioClass pmetaclass layout) << ';'; lf.
	stream << (self idFor: aPinocchioClass) 
		<< '->name = ' << (self idFor: aPinocchioClass name) << $;; lf.