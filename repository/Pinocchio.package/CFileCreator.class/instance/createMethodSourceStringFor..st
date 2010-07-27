exporting
createMethodSourceStringFor: method
	stream << '/*'; lf;
		<< method asCCommentEscapedSource; lf;
		<< '*/'; lf.