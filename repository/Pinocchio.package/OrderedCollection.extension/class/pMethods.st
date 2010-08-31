*Pinocchio
pMethods
	<preventExport>
	self == OrderedCollection
		ifTrue:
			[ ^{#add:.
				#addAll:.
				#addAllLast:.
				#addFirst:.
				#addLast:.
				#asArray.
				#at:.
				#at:put:.
				#collect:.
				#select:.
				#do:.
				#grow.
				#growSize.
				#makeRoomAtFirst.
				#makeRoomAtLast.
				#removeFirst.
				#removeLast.
				#reset.
				#reverseDo:.
				#reversed.
				#inspectChildrenOn:.
				#setCollection:.
				#size.}].
	^ super pMethods