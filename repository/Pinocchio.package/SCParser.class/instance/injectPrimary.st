expression
injectPrimary
	^ self primary
		<= (self primaryVariable | self literal <= self block <= self braceExpression <= self scopedExpression)