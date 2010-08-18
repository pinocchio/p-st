expression
injectPrimary 
	^ self primary <= (self primaryVariable | self literal <= self block <= self scopedExpression <= self braceExpression)