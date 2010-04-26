private
switchThread
    | thread |
    PContinuation on: [ :aContinuation |
        " Store the current thread. "
        threads current
            continuation: aContinuation;
            context: context.
        " Prepare the next thread. "
        states next.
        thread := threads next.
        " After having stepped through all threads,
          compare all states to the first. "
        threads ifAtFirst: [
            states do: [:aState | aState should be: states current ]].
        " Resume the next thread "
        context := thread context.
        thread continuation continue ].
