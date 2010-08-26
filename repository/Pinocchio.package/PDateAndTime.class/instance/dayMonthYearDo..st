squeak protocol
dayMonthYearDo: aBlock
	"Evaluation the block with three arguments: day month, year."

	| l n i j dd mm yyyy |
	l := jdn + 68569.
	n := l * 4 // 146097.
	l := l - (n * 146097 + 3 // 4).
	i := (l + 1) * 4000 // 1461001.
	l := l - (i * 1461 // 4) + 31.
	j := 80 * l // 2447.
	dd := l - (j * 2447 // 80).
	l := j // 11.
	mm := j + 2 - (l * 12).
	yyyy := (n - 49) * 100 + i + l.

	^ aBlock
		value: dd
		value: mm
		value: yyyy.
