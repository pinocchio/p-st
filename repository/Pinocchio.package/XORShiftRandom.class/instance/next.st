as yet unclassified
next
	|t v2 t2 |
	t := x xor: (x >> 7).
	x := y.
	y := z.
	z := w.
	w := v.
	v2 := v & 16r7FFFFF << 6.
	t2 := t & 16r1FFF << 13.
 	v := (v xor: v2) xor: (t xor: t2).
	^ ((y+y+1) & 16rFFFFFFF * v) & 16rFFFFFFF.