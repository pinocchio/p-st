exporting
exportPlugins
	plugins keysAndValuesDo: [ :key :aCollection|
		self exportPlugin: key withPragmas: aCollection.].