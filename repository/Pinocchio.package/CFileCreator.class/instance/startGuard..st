exporting
startGuard: guardName
	stream
		<< '#ifndef '; << guardName; cr;
		<< '#define '; << guardName; << ' '; cr; cr