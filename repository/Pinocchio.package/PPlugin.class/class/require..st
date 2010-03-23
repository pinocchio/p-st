plugging
require: aPath
	| newPlugin pluginsPath |
	(self atPath: aPath) ifNotNil: [ :plugin | ^ plugin ].
	newPlugin := self load: aPath.
	plugins at: newPlugin identifier put: newPlugin.
	pluginsPath at: newPlugin path put: newPlugin.
	^ newPlugin