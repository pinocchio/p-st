visitor
visitString: aPinocchioString
	self put: aPinocchioString with: 'new_String(L"' , aPinocchioString string cEscaped , '")'