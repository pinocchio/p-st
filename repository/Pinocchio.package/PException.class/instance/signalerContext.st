PharoIntegration
signalerContext
	<preventExport>
	^ environment findContextSuchThat: [:ctxt |
		(ctxt receiver == self or: [ctxt receiver == self class]) not]