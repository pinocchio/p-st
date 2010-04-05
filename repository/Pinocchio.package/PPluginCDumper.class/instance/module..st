accessing
module: aModuleName
	| parts |
	module := #. split: aModuleName.
	pluginName := module last.
	parts := module collect: [ :each|
		each asLowercase.
	].
	pluginIncludePrefix := '/' join: (parts copyFrom: 1 to: module size - 1).
	pluginPath := self sourcePath, pluginIncludePrefix.
	pluginSourcePath := pluginPath, '/', pluginName.