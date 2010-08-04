*Pinocchio
pClassMethods
	<preventExport>
	self == Collection ifTrue: [ 
		^ {#with:.
			#with:with:.
			#with:with:with:.
			#withAll:.}].
	^ super pClassMethods