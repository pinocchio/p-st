*Pinocchio
pinocchioOn: aBuilder 
	<worldMenu>
	(aBuilder item: #Pinocchio)
		order: 2.0;
		icon: MenuIcons smallPinocchioIcon;
		with: [
			(aBuilder item: # 'Browser') action: [P browser]; icon: Browser taskbarIcon.
			(aBuilder item: # 'Export All') action: [P exportAll.].
			(aBuilder item: # 'Update') action: [P upgrade.].
			(aBuilder item: # 'Update Merged') action: [P upgradeMerged.].
			(aBuilder item: # 'Commit') action: [World collapseAll].
			].