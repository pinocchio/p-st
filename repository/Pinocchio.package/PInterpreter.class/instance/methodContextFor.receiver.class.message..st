sending
methodContextFor: closure receiver: receiver class: methodClass message: aMessage
	context := (PMethodContext new: (closure code params size + closure code locals size))
				parent: context;
				receiver: receiver;
				methodClass: methodClass;
				closure: closure.
	aMessage withIndexDo: [ :arg :index | context at: index put: arg ]