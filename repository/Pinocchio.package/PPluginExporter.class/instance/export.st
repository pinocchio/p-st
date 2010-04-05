exporting
export
	self reset.
	classes do: [ :aClass|
		self collectPluginFromClass: aClass.
	].
	self exportPlugins.