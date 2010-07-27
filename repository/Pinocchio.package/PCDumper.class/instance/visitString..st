visitor
visitString: aPinocchioString
	self put: aPinocchioString with: [ :s| 
			s << 'new_String(L"'<< aPinocchioString string cEscaped << '")' ].