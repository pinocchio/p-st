initialize-release
closeAndDestroy: aTimeout

	"TODO: review if this does the right thing"
	self primClose.
	self destroy.