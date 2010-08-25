exporting
collectPluginFromClass: aPClass
	aPClass methods do: [ :aPMethod|
		self collectPluginFromMethod: aPMethod].
	aPClass pmetaclass methods do: [ :aPMethod|
		self collectPluginFromMethod: aPMethod].