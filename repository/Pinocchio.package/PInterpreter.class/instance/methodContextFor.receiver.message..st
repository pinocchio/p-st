sending
methodContextFor: closure receiver: receiver message: aMessage
	context := (PMethodContext new: closure code params size + closure code locals size)
		returnContext: context;
		receiver: receiver;
		closure: closure.
	aMessage withIndexDo: [ :arg :index | context at: index put: arg ]