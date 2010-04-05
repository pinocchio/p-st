sourceCreation
writePrimitiveForAnnotation: anAnnotation
	| source pmethod sourceLine |
	pmethod := anAnnotation x.
	source := self sourceStringForAnnotation: anAnnotation.
	sourceLine := pmethod host name asString, ' >> ', pmethod selector.
	stream lf;
		<< ('#line 3 "', sourceLine ,'"'); lf;
		<< ('NATIVE(', (self nativeNameFromAnnotation: anAnnotation), ')'); lf;
		<< ('    ASSERT_ARG_SIZE(', anAnnotation x code params size asString,');'); lf;
		<< source; lf;
		<< '}'; lf.