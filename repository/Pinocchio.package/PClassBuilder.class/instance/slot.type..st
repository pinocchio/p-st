initialize-release
slot: name type: type
	slots at: name ifPresent: [ :aSlot | self raiseDuplicateSlot: aSlot redefinedAs: type ]. 
	^ slots at: name put: (type named: name)