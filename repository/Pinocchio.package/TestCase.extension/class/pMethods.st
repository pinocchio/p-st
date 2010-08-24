*Pinocchio
pMethods
	<preventExport>
	self == TestCase ifFalse: [ ^ super pMethods ].
	^ { #setUp.
		#setTestSelector:.
		#resources.
		#run:.
		#runCase.
		#performTest.
		#tearDown.
		#cleanUpInstanceVariables.
		}