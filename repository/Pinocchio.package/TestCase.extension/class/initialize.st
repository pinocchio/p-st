*Pinocchio
initialize
	<preventExport>
     super initialize.
	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #method using: #methodChanged:.