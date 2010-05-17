plugging
require: identifier at: aPath
	| newPlugin |
	plugins at: identifier ifPresent: [ :plugin | ^ plugin ].
	newPlugin := self load: aPath.
	newPlugin path: aPath.
	newPlugin identifier: identifier.
	plugins at: identifier put: newPlugin.
	^ newPlugin