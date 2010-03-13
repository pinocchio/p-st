*Pinocchio
testPerformanceFor: aDictClass
 <preventExport>
 | d r o index |
 r := Random new.
 d := aDictClass new.
 o := Object new.
 1 to: 10000 do: [ :count|
  d at: count put: count.
 ].
 MessageTally spyOn: [
  1 to: 20000 do: [ :count|
   d at: ((count  \\ 10000) +1 ).
  ]
 ]