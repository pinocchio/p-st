class-creation
slots: slots super: superclass type: type
	| layout index |
	layout := type new: slots size + superclass layout size.
	superclass layout withIndexDo: [ :slot :i | layout at: i put: slot ].
	index := superclass layout size + 1.
	slots keysAndValuesDo: [ :name :slot |
		(superclass definesSlot: name) ifTrue: [ self raiseDuplicateSlot: slot ].
		layout at: index put: slot.
		slot index: index - 1.
		index := index + 1
	].
	^ self new
		layout: layout;
		superclass: superclass;
		methods: PDictionary new.