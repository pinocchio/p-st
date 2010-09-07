pharo-exporting
newWith: cls exporting: aPinocchioObject
	^ self new
		sclass: cls;
		pclass: aPinocchioObject;
		name: cls pinocchioName;
		methodProvider: aPinocchioObject.