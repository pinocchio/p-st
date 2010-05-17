exporting
upgradeExportAndQuit
	OSProcess trace: 'updating pinocchio from squeaksource'.
	self upgrade.
	OSProcess trace: 'exporting classes'.
	self exportAllHeadless.
	OSProcess trace: 'save and quit Pharo'.
	SmalltalkImage current snapshot: true andQuit: true.