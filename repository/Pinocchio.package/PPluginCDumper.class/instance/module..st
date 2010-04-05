accessing
module: aModuleName
	| parts |
	module := #. split: aModuleName.
	pluginName := module last.
	parts := module collect: [ :each|
		each asLowercase.
	].
	pluginPath := self sourcePath, ('/' join: (parts copyFrom: 1 to: module size - 1)).
	pluginSourcePath := pluginPath, '/', pluginName.