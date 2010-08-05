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
				#setCollection:.
				#size.}].
	^ super pMethods