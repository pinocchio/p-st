exporting
startGuard: guardName
	stream
		<< '#ifndef '; << guardName; lf;
		<< '#define '; << guardName; << ' '; lf; lf