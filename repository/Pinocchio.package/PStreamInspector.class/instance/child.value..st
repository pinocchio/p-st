private
child: label value: child
	stream lf; tab.
	label inspectLabelOn: stream.
	stream << ': '.
	self shallowInspect: child value on: stream