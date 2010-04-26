interpreting
interpret: closures
    self initialize: closures size.
    closures do: [ :aClosure |
        PContinuation on: [ :startNext |
            " Pre-install a thread that starts
              evaluating the next closure. "
            threads ifHasNext: [ :thread |
                thread
                    continuation: startNext;
                    context: nil ].
            " Leave the debugger when the first
              thread actually returns. "
            ^ super interpret: aClosure ]].
