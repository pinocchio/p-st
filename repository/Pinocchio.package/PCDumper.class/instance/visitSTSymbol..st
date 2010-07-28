visitor
visitSTSymbol: aSymbol
	stream << 'Symbol  ' << (self idFor:  aSymbol) << ' = new_Symbol(L"'<< aSymbol cEscaped << '");'; lf.