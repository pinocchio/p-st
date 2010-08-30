accessing
value: aBoolean
	value := aBoolean.
	"<pPrimitive: #value: plugin: #'Concurrency.AtomicBoolean' code: '
        ${value} = #{value};
        ^self;
	'>
	self pinocchioPrimitiveFailed."