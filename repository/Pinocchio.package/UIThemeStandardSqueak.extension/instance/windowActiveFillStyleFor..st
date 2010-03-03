*Pinocchio
windowActiveFillStyleFor: aWindow
	"Return the window active fillStyle for the given window."
	
	^ SolidFillStyle color: (aWindow paneColorToUse adjustSaturation: 0.4 brightness: 0) 