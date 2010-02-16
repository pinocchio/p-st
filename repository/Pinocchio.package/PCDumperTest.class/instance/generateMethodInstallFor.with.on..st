test-source-output
generateMethodInstallFor: methodSelector with: body on: outStream.
	dumper stream: outStream.
	dumper visit: (
		PMethodClosure new
			code: body;
			pclass: (PInternalVariable new uid: 'Test_Class');
			selector: methodSelector asPSymbol)