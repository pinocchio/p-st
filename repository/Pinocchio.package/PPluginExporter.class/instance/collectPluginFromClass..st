exporting
collectPluginFromClass: aPClass
	aPClass methods do: [ :aPMethod|
		self collectPluginFromMethod: aPMethod.
	]