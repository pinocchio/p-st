*Pinocchio
pMethods
	<preventExport>
	self == SequenceableCollection ifTrue: [
		^{  #first.
			#second.
			#=.
			#do:.
			#from:to:do:.
			#copyFrom:.
			#copyFrom:to:.
			#beginsWith:.
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
			#select:.
			#writeStream.
			#last. }].
	^ super pMethods