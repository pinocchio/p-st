exporting
exportPlugins
	plugins keyValueDo: [ :key :aCollection|
		self exportPlugin: key withPragmas: aCollection.
	].