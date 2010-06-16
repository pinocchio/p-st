*Pinocchio
pMethods
	<preventExport>
	self = OrderedCollection
		ifTrue:
			[ | s |
			s := OrderedCollection new.
			s add: #add:;
				add: #removeFirst;
				add: #removeLast;
				add: #addLast:;
				add: #makeRoomAtLast;
				add: #addFirst:;
				add: #makeRoomAtFirst;
				add: #grow;
				add: #growSize;
				add: #setCollection:;
				add: #size;
				add: #do:;
				add: #at:;
				add: #collect:;
				add: #at:put:;
				add: #reverseDo:;
				add: #reversed;
				add: #asArray;
				add: #reset.
			^ s ].
	^ super pMethods