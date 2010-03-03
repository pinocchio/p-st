*Pinocchio
windowInactiveFillStyleFor: aWindow
	"Return the window inactive fillStyle for the given window."
	
	^ SolidFillStyle color: (aWindow paneColorToUse  muchLighter)