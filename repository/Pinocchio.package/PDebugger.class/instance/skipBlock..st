stepping
skipBlock: count
    |skips previousBlock|
    skips := 0.
    previousBlock := self stepBlock.
    ^ [ :receiver :class :message :action |
        skips := skips + 1.
        (skips >= count)
            ifTrue: [ self stepBlock: previousBlock ].
        self executeAction: action ].
