visual properties
buildBackGroundMarked
	| back |
	back := BlBackground builder image: self image; build.
	back2:=back.
	self background: back.