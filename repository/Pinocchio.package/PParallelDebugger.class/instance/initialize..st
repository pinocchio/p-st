initialize-release
initialize: size
    threads := PStatefulArray new: size.
    states := PStatefulArray new: size.
    1 to: size do: [ :index |
        threads at: index put: PThread new ].
