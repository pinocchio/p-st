exporting
upgradeExportAndQuit
	self upgrade.
	self exportAllHeadless.
	SmalltalkImage current snapshot: true andQuit: true.