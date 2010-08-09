*Pinocchio
pMethods
	<preventExport>
	self == SequenceableCollection ifTrue: [
		^{#first.
			#second.
			#=.
			#do:.
			#from:to:do:.
			#copyFrom:.
			#copyFrom:to:.
			#doWithIndex:.
			#hasEqualElements:.
			#indexOf:.
			#indexOf:ifAbsent:.
			#indexOf:startingAt:ifAbsent:.
			#replaceFrom:to:with:startingAt:.
			#reverse.
			#reversed.
			#reverseDo:.
			#withIndexDo:.
			#joinUsing:.
			#split:.
			#copyWith:.
			#do:separatedBy:.
			#collect:.
			#last. }].
	^ super pMethods