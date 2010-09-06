accessing
stdevSquared
	"applying standard error propagation.
	sigma^2 = SUM(average_i^2 * stdev_i^2)"
	^ runs inject: 0 into: [ :sum :run| sum + run stdev squared].