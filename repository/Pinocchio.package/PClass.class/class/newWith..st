pharo-exporting
newWith: cls
	<preventExport>
	^ self new 
		sclass: cls; 
		name: cls pinocchioName asPSymbol.