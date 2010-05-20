exporting
createFooter
	stream << 'void init_' << self pclass name asString << '_methods() {'; lf.
	methods do:[ :method | stream <<  'init_method_' << method uid << '();'; lf ].
	stream << '}'