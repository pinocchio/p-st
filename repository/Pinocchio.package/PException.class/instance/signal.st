PharoIntegration
signal
	<preventExport>
	"Ask ContextHandlers in the sender chain to handle this signal.  The default is to execute and return my defaultAction."

	environment := thisContext contextTag.
	^ environment nextHandlerContext handleSignal: self