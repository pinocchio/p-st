*Pinocchio
mainMenuItems
	"Answer the most important menu items available for this tool set"
	^#(
		('Class Browser' 			#openClassBrowser)
		('Workspace'				#openWorkspace)
		('Test Runner'				#openTestRunner)
		('Monticello Browser'		#openMonticelloBrowser)
		('Pinocchio Changed'		#pinocchioExportChanges)
		('Pinocchio All'				#pinocchioExportAll)
	)
