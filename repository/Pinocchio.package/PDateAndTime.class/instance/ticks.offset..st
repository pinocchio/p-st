private
ticks: ticks offset: utcOffset
	"ticks is {julianDayNumber. secondCount }"

	self normalize: 2 ticks: ticks base: PChronologyConstants secondsInDay.

	jdn	:= ticks at: 1.
	seconds	:= ticks at: 2.
	offset := utcOffset