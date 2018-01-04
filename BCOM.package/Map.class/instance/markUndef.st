agregating
markUndef
tiles do: [ :collection | collection do: [ :tile | tile pathfindingFlag: #undef ] ].
^ self.