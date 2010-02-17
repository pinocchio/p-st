pharo-exporting
newWith: cls exporting: aPinocchioObject uid: uid
	^ self new sclass: cls; 
		name: cls pClassName asPSymbol;
		methodProvider: aPinocchioObject;
		pclass: aPinocchioObject;
		uid: uid.