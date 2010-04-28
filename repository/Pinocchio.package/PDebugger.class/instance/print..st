shelling
print: msg
	self indent. (PFile stderr) << msg; lf.