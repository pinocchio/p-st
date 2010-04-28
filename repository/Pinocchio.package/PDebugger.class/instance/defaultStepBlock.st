stepping
defaultStepBlock
    ^ [ :receiver :class :message :action |
        self print: receiver class name, '>>', message.
        self debugShellWithAction: action ].
