*Pinocchio
pMethods
	<preventExport>
	self = SequenceableCollection ifTrue: [ | s |
			s := OrderedCollection new.
			s
				add: #first;
				add: #second;
				add: #=;
				add: #do:;
				add: #from:to:do:;
				add: #copyFrom:;
				add: #copyFrom:to:;
				add: #doWithIndex:;
				add: #hasEqualElements:;
				add: #indexOf:;
				add: #indexOf:ifAbsent:;
				add: #indexOf:startingAt:ifAbsent:;
				add: #replaceFrom:to:with:startingAt:;
				add: #reverse;
				add: #reversed;
				add: #withIndexDo:;
				add: #joinUsing:;
				add: #split:;
				add: #copyWith:;
				add: #do:separatedBy:;
				add: #select:;
				add: #collect:;
				add: #last.
			^ s ].
	^ super pMethods