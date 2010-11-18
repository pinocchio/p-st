as yet unclassified
next
	|t v2 t2 |
	t := x bitXor: (x >> 7).
	x := y.
	y := z.
	z := w.
	w := v.
	v2 := (v << 6) bitAnd: 16rFFFFFFFF.
	t2 := (t << 13) bitAnd: 16rFFFFFFFF.
 	v := (v bitXor: v2) bitXor: (t bitXor: t2).
	^ ((y+y+1) * v) bitAnd: 16rFFFFFFFF.