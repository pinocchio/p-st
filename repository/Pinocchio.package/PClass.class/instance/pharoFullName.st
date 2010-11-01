accessing
pharoFullName
	<preventExport>
	^ ((self package asString replaceAll:$. with: $_), '_', sclass name)