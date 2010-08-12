handling
initialize
	super initialize.
	modes := PDictionary new.
	modes at: $O put: PSS3EscapeMode new.
	modes at: $[ put: PCSIEscapeMode new.
	"modes at: $^ put: (PCString named: 'Privacy Message').
	modes at: $_ put: (PCString named: 'Application Program Command').
	modes at: $P put: (PCShortString named: 'Device Control String').
	modes at: $] put: (PCShortString named: 'Operating System Command')."