visitor
visitSTString: aString
	stream << 'String ' << (self idFor:  aString) << ' = new_String(L"'<< aString cEscaped << '");'; lf.