testing
testAndSet
	<pPrimitive: #testAndSet plugin: #'Concurrency.AtomicBoolean' code: '
    if (${value} == true) {
        ^true;
    } else {
        ${value} = true;
        ^false;
    }
	'>
	self pinocchioPrimitiveFailed.