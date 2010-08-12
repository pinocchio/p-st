visiting
visitAssign: assign
	| result |
	result := assign species new.
	result variable: (assign variable accept: self).
	result expression: (assign expression accept: self).
	^ result