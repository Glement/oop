visual properties
buildBack
	| back |
	back:=BlBackground builder image: self image; build.
	back1:=back.
	self background: back.
	^ self.