expression
injectPrimary
	^ self primary <=  (self literal | self block <= self primaryVariable <= self braceExpression <= self scopedExpression)