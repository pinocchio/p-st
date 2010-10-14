shell
print: msg
	self indent. (PVTermOutputDriver stderr) << msg; lf.