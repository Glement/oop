visual properties
backBuild: link
	| img b |
	img:=ImageReadWriter formFromFileNamed: link.
	b:=BlBackgroundBuilder new image: img; build.
	^ b.