sourceCreation
writePrimitiveForAnnotation: anAnnotation
	| source |
	source := self sourceStringForAnnotation: anAnnotation.
	stream lf;
		<< ('NATIVE(', (self nativeNameFromAnnotation: anAnnotation), ')'); lf;
		<< ('    ASSERT_ARG_SIZE(', anAnnotation x code params size asString,');'); lf;
		<< source; lf;
		<< '}'; lf.