squeak protocol
seconds: seconds
	"Answer a Time from midnight."

	^ self basicNew ticks: (PDuration seconds: seconds) ticks