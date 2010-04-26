private
defaultStepBlock
    ^ [ :receiver :class :message :action |
        states put: receiver @ class @ message.
        self showInvocation.
        " Switch to compare all invocations "
        self switchThread.
        states put: action value.
        self showReturn.
        " Switch to compare all return values "
        self switchThread.
        " Return the result of the invocation "
        states current ].
