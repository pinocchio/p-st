sourceCreation
writePluginExportForAnnotation: anAnnotation
	| selector |
	selector := anAnnotation y at: 1.
	stream << '    EXPORT(new_Type_Symbol_cached(L"'; << selector; << '"), '; 
		<< (self nativeNameFromAnnotation: anAnnotation); <<');'; lf.