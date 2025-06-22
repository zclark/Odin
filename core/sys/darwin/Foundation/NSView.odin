package objc_Foundation

@(objc_class="NSView")
View :: struct {using _: Responder}

@(objc_type=View, objc_name="initWithFrame")
View_initWithFrame :: proc "c" (self: ^View, frame: Rect) -> ^View {
	return msgSend(^View, self, "initWithFrame:", frame)
}
@(objc_type=View, objc_name="bounds")
View_bounds :: proc "c" (self: ^View) -> Rect {
	return msgSend(Rect, self, "bounds")
}
@(objc_type=View, objc_name="layer")
View_layer :: proc "c" (self: ^View) -> ^Layer {
	return msgSend(^Layer, self, "layer")
}
@(objc_type=View, objc_name="setLayer")
View_setLayer :: proc "c" (self: ^View, layer: ^Layer) {
	msgSend(nil, self, "setLayer:", layer)
}
@(objc_type=View, objc_name="wantsLayer")
View_wantsLayer :: proc "c" (self: ^View) -> BOOL {
	return msgSend(BOOL, self, "wantsLayer")
}
@(objc_type=View, objc_name="setWantsLayer")
View_setWantsLayer :: proc "c" (self: ^View, wantsLayer: BOOL) {
	msgSend(nil, self, "setWantsLayer:", wantsLayer)
}
@(objc_type=View, objc_name="convertPointFromView")
View_convertPointFromView :: proc "c" (self: ^View, point: Point, view: ^View) -> Point {
	return msgSend(Point, self, "convertPoint:fromView:", point, view)
}
@(objc_type=View, objc_name="addSubview")
View_addSubview :: proc "c" (self: ^View, view: ^View) {
	msgSend(nil, self, "addSubview:", view)
}
@(objc_type=View, objc_name="lockFocus")
View_lockFocus :: proc "c" (self: ^View) {
	msgSend(nil, self, "lockFocus")
}
@(objc_type=View, objc_name="lockFocusIfCanDraw")
View_lockFocusIfCanDraw :: proc "c" (self: ^View) -> BOOL {
	return msgSend(BOOL, self, "lockFocusIfCanDraw")
}
@(objc_type=View, objc_name="lockFocusIfCanDrawInContext")
View_lockFocusIfCanDrawInContext :: proc "c" (self: ^View, gc: ^GraphicsContext) -> BOOL {
	return msgSend(BOOL, self, "lockFocusIfCanDrawInContext:", gc)
}
@(objc_type=View, objc_name="unlockFocus")
View_unlockFocus :: proc "c" (self: ^View) {
	msgSend(nil, self, "unlockFocus")
}

// Modifying the Frame Rectangle (untested)
@(objc_type=View, objc_name="frame")
View_frame :: proc "c" (self: ^View) -> Rect {
	return msgSend(Rect, self, "frame")
}
@(objc_type=View, objc_name="setFrame")
View_setFrame :: proc "c" (self: ^View, frame: Rect) {
	msgSend(nil, self, "setFrame:")
}
@(objc_type=View, objc_name="setFrameOrigin")
View_setFrameOrigin :: proc "c" (self: ^View, origin: Point) {
	msgSend(nil, self, "setFrameOrigin:", origin)
}
@(objc_type=View, objc_name="setFrameSize")
View_setFrameSize :: proc "c" (self: ^View, size: Size) {
	msgSend(nil, self, "setFrameSize:", size)
}
@(objc_type=View, objc_name="frameRotation")
View_frameRotation :: proc "c" (self: ^View) -> f64 {
	return msgSend(f64, self, "frameRotation")
}
@(objc_type=View, objc_name="setFrameRotation")
View_setFrameRotation :: proc "c" (self: ^View, rotation: f64) {
	msgSend(nil, self, "setFrameRotation:", rotation)
}
// TODO: Frame changed notifications

// Resizing Subviews (untested)
@(objc_type=View, objc_name="autoresizesSubviews")
View_autoresizesSubviews :: proc "c" (self: ^View) -> BOOL {
	return msgSend(BOOL, self, "autoresizesSubviews")
}
@(objc_type=View, objc_name="setAutoresizesSubviews")
View_setAutoresizesSubviews :: proc "c" (self: ^View, auto: BOOL) {
	msgSend(BOOL, self, "setAutoresizesSubviews:", auto)
}
AutoresizingMaskOption :: enum UInteger {
	MinXMargin,
	WidthSizable,
	MaxXMargin,
	MinYMargin,
	HeightSizable,
	MaxYMargin,
}
AutoresizingMask :: bit_set[AutoresizingMaskOption; UInteger]
@(objc_type=View, objc_name="autoresizingMask")
View_autoresizingMask :: proc "c" (self: ^View) -> AutoresizingMask {
	return msgSend(AutoresizingMask, self, "autoresizingMask")
}
@(objc_type=View, objc_name="setAutoresizingMask")
View_setAutoresizingMask :: proc "c" (self: ^View, mask: AutoresizingMask) {
	msgSend(nil, self, "setAutoresizingMask:", mask)
}

// Invalidating the View's Content (untested)
@(objc_type=View, objc_name="setNeedsDisplayInRect")
View_setNeedsDisplayInRect :: proc "c" (self: ^View, rect: Rect) {
	msgSend(nil, self, "setNeedsDisplayInRect:", rect)
}
@(objc_type=View, objc_name="needsDisplay")
View_needsDisplay :: proc "c" (self: ^View) -> BOOL {
	return msgSend(BOOL, self, "needsDisplay")
}
@(objc_type=View, objc_name="setNeedsDisplay")
View_setNeedsDisplay :: proc "c" (self: ^View, needs: BOOL) {
	msgSend(nil, self, "setNeedsDisplay:", needs)
}
@(objc_type=View, objc_name="display")
View_display :: proc "c" (self: ^View) {
	msgSend(nil, self, "display")
}
@(objc_type=View, objc_name="displayRect")
View_displayRect :: proc "c" (self: ^View, rect: Rect) {
	msgSend(nil, self, "displayRect:", rect)
}
@(objc_type=View, objc_name="displayRectIgnoringOpacity")
View_displayRectIgnoringOpacity :: proc "c" (self: ^View, rect: Rect) {
	msgSend(nil, self, "displayRectIgnoringOpacity:", rect)
}
@(objc_type=View, objc_name="displayRectIgnoringOpacityInContext")
View_displayRectIgnoringOpacityInContext :: proc "c" (self: ^View, rect: Rect, ctx: ^GraphicsContext) {
	msgSend(nil, self, "displayRectIgnoringOpacity:inContext", rect, ctx)
}
@(objc_type=View, objc_name="displayIfNeeded")
View_displayIfNeeded :: proc "c" (self: ^View) {
	msgSend(nil, self, "displayIfNeeded")
}
@(objc_type=View, objc_name="displayIfNeededInRect")
View_displayIfNeededInRect :: proc "c" (self: ^View, rect: Rect) {
	msgSend(nil, self, "displayIfNeededInRect:", rect)
}
@(objc_type=View, objc_name="displayIfNeededIgnoringOpacity")
View_displayIfNeededIgnoringOpacity :: proc "c" (self: ^View) {
	msgSend(nil, self, "displayIfNeededIgnoringOpacity")
}
@(objc_type=View, objc_name="displayIfNeededInRectIgnoringOpacity")
View_displayIfNeededInRectIgnoringOpacity :: proc "c" (self: ^View, rect: Rect) {
	msgSend(nil, self, "displayIfNeededInRectIgnoringOpacity:", rect)
}
@(objc_type=View, objc_name="translateRectsNeedingDisplayInRectBy")
View_translateRectsNeedsDisplayInRectBy :: proc "c" (self: ^View, clip: Rect, delta: Size) {
	msgSend(nil, self, "translateRectsNeedsDisplayInRect:by:", clip, delta)
}
@(objc_type=View, objc_name="isOpaque")
View_isOpaque :: proc "c" (self: ^View) -> BOOL {
	return msgSend(BOOL, self, "isOpaque")
}
@(objc_type=View, objc_name="willDraw")
View_willDraw :: proc "c" (self: ^View) {
	msgSend(nil, self, "viewWillDraw")
}
