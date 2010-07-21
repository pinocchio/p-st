*Pinocchio
pMethods
	<preventExport>
	self = OrderedCollection
		ifTrue:
			[ | s |
			s := OrderedCollection new.
			s    add: #add:;
				add: #addAll:;
				add: #addAllLast:;
				add: #addFirst:;
				add: #addLast:;
				add: #asArray;
				add: #at:;
				add: #at:put:;
				add: #collect:;
				add: #do:;
				add: #grow;
				add: #growSize;
				add: #makeRoomAtFirst;
				add: #makeRoomAtLast;
				add: #removeFirst;
				add: #removeLast;
				add: #reset;
				add: #reverseDo:;
				add: #reversed;
				add: #setCollection:;
				add: #size.
			^ s ].
	^ super pMethods