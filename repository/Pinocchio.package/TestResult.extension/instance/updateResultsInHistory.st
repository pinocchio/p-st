*Pinocchio-Testing
updateResultsInHistory
	(Array with: #passed with: #failures with:#errors) do: [ :status | 
		(self perform: status) do: [ :testCase | 
			self class updateTestHistoryFor: testCase status: status ] ]