private
showReturn
	| current |
	current := states current.
	self show: '--> ', current
