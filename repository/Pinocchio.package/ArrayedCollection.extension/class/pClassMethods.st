*Pinocchio
pClassMethods
	<preventExport>
	self == ArrayedCollection ifTrue: [ 
		^ {#new.
			#newFrom:.
			#with:.
			#with:with:.
			#with:with:with:.
			#withAll:.}].
	^ super pClassMethods