initialization
initialize
	(TheWorldMenu respondsTo: #registerOpenCommand:)
		ifTrue:
			[ TheWorldMenu
				registerOpenCommand:
					{'Pinocchio Export System'.
					{self.
					#export}} ]