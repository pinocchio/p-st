*Pinocchio
mainMenuItems
	"Answer the most important menu items available for this tool set"

	^ #(#('Class Browser' #openClassBrowser) #('Workspace' #openWorkspace) #('Test Runner' #openTestRunner) #('Monticello Browser' #openMonticelloBrowser) #('File Browser' #openFileList) #('Process Browser' #openProcessBrowser) 
	#- 
	#('Pinocchio Browser' #openPinocchioBrowser) 
	#('Pinocchio Export Changed' #pinocchioExportChanges) 
	#('Pinocchio Export All' #pinocchioExportAll)
	#-
	#('Pinocchio Upgrade' #pinocchioUpgrade)
	#('Pinocchio Upgrade Merged' #pinocchioUpgradeMerged)
	#('Pinocchio Commit' #pinocchioCommit))