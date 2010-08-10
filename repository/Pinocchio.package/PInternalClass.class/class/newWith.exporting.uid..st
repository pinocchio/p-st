pharo-exporting
newWith: cls exporting: aPinocchioObject uid: id
	^ (self new)
		sclass: cls;
		name: cls pinocchioName asPObject;
		methodProvider: aPinocchioObject;
		pclass: aPinocchioObject;
		uid: id.