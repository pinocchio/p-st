expression
injectPrimary
	^ self primary <=  (self literal | self block <=  self scopedExpression <= self primaryVariable <= self braceExpression)