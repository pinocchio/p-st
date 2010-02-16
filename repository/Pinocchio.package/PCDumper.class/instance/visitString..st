visitor
visitString: aPinocchioString 
	self put: aPinocchioString
		with: ('new_Type_String(L"' , aPinocchioString string cEscaped, '")').