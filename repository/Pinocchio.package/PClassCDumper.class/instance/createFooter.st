exporting
createFooter
	stream << 'void init_' << currentClass name asString << '_methods() {'; lf.
	methods do:[ :method | stream <<  'init_method_' << method uid << '();'; lf ].
	stream << '}'