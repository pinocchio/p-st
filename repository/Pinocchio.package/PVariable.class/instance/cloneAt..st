cloning
cloneAt: idx
	^ self species new
		name: name;
		localId: localId;
		scopeId: idx