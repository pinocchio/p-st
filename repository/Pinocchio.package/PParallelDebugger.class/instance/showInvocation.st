private
showInvocation
	| current |
	current := states current.
	self show: current x x class name, '@', current x y name,  '>>', current y.
