instance selection
getBlankByType: aType
		(aType  = $1)
		ifTrue: [^((self new isCover: true) isFullCover: true)].
		(aType  = $2)
		ifTrue: [^((self new isCover: true) isFullCover: false)].
		(aType  = $3)
		ifTrue: [^((self new isCover: false) isFullCover: false) ].
		(aType  = $4)
		ifTrue: [ ^((self new isCover: true) isFullCover: false)].
		(aType  = $5)
		ifTrue: [ ^((self new isCover: false) isFullCover: false) ].
		^ nil.
		