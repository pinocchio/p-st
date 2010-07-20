sourceCreation
writePluginExportForAnnotation: anAnnotation
	| selector |
	selector := anAnnotation y at: 1.
	stream << '    EXPORT(L"'; << selector; << '", '; 
		<< (self nativeNameFromAnnotation: anAnnotation); <<');'; lf.