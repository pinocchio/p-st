exporting
createFooter
	stream << 'void init_' << currentClass pharoName << '_methods() {'; indent; lf.
	currentClass methods do:[ :method |
		stream <<  'init_' << (self idFor: method selector) << '();'; lf ].
	currentClass pmetaclass methods do:[ :method |
		stream <<  'init_class_' << (self idFor: method selector) << '();'; lf ].
	stream outdent; lf; << '}'