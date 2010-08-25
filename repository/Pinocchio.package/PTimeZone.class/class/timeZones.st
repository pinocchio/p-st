accessing
timeZones

	^ (Array new: 12)
		at: 1 put: (self offset:  0 hours name: 'Universal Time' abbreviation: 'UTC');
		at: 2 put: (self offset:  0 hours name: 'Greenwich Mean Time' abbreviation: 'GMT');
		at: 3 put: (self offset:  1 hours name: 'British Summer Time' abbreviation: 'BST');
		at: 4 put: (self offset:  2 hours name: 'South African Standard Time' abbreviation: 'SAST');
		at: 5 put: (self offset: -8 hours name: 'Pacific Standard Time' abbreviation: 'PST');
		at: 6 put: (self offset: -7 hours name: 'Pacific Daylight Time' abbreviation: 'PDT');
		at: 7 put: (self offset: -7 hours name: 'Mountain Standard Time' abbreviation: 'MST');
		at: 8 put: (self offset: -6 hours name: 'Mountain Daylight Time' abbreviation: 'MDT');
		at: 9 put: (self offset: -6 hours name: 'Central Standard Time' abbreviation: 'CST');
		at: 10 put: (self offset: -5 hours name: 'Central Daylight Time' abbreviation: 'CDT');
		at: 11 put: (self offset: -5 hours name: 'Eastern Standard Time' abbreviation: 'EST');
		at: 12 put: (self offset: -4 hours name: 'Eastern Daylight Time' abbreviation: 'EDT');
		yourself.