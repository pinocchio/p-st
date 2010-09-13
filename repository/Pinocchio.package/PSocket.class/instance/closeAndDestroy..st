initialize-release
closeAndDestroy: aTimeout

	"TODO: review if this does the right thing"
	handle ifNotNil: [
		self primClose.
		self destroy.
	]