visitor
visitSTSmallInt: aSmallInt
	stream << 'SmallInt '<< (self idFor: aSmallInt ) << ' = new_SmallInt(' << aSmallInt asString << ');'; lf.