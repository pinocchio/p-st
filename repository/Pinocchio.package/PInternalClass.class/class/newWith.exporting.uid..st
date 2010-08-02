pharo-exporting
newWith: cls exporting: aPinocchioObject uid: id
	^ (self new)
		sclass: cls;
		pclass: aPinocchioObject;
		uid: id;
		name: cls pinocchioName asPObject;
		methodProvider: aPinocchioObject.