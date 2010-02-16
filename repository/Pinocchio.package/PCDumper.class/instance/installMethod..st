convenience
installMethod: aPinocchioMethod
	| closure |
	self currentClass ifNil: [ ^ aPinocchioMethod ].
	closure := PMethodClosure new
					code: aPinocchioMethod;
					pclass: self currentClass;
					selector: aPinocchioMethod selector.
	"Explicitely avoid caching for method closures"
	closure accept: self.