*Pinocchio
erf
	"error is less than 1.5 * 10-7 for all inputs"
    "save the sign of x"
    | sign x a1 a2 a3 a4 a5 p t y |
	sign := self < 0 ifTrue: [-1] ifFalse: [1].
    x := self abs.

    "constants"
    a1 :=  0.254829592.
    a2 := -0.284496736.
    a3 :=  1.421413741.
    a4 := -1.453152027.
    a5 :=  1.061405429.
    p  :=  0.3275911.

    "A&S formula 7.1.26"
    t := 1.0 / (1.0 + (p*x)).
    y := 1.0 - ((((((a5*t + a4)*t) + a3)*t + a2)*t + a1) * t * ((x * x * -1) exp)).
    ^ sign*y  "erf(-x) = -erf(x)"
