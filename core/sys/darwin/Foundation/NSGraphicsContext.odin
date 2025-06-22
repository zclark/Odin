package objc_Foundation

foreign import "system:Foundation.framework"

@(objc_class="NSGraphicsContext")
GraphicsContext :: struct {using _: Object}

// @(default_calling_convention="c")
// foreign Foundation {
// 	currentContext    :: proc() -> ^GraphicsContext ---
// 	setCurrentContext :: proc(gc: ^GraphicsContext) ---
// 	// CGContext         :: proc() -> ^CGContext
// }

// Managing the Current Context (untested)
@(objc_type=GraphicsContext, objc_name="currentContext", objc_is_class_method=true)
GraphicsContext_currentContext :: proc "c" () -> ^GraphicsContext {
	return msgSend(^GraphicsContext, GraphicsContext, "currentContext")
}
@(objc_type=GraphicsContext, objc_name="setCurrentContext", objc_is_class_method=true)
GraphicsContext_setCurrentContext :: proc "c" (gc: ^GraphicsContext) {
	msgSend(^GraphicsContext, GraphicsContext, "setCurrentContext:", gc)
}
// TODO: CGContext

// Managing the Graphics State (untested)
// These two functions have instance equivalents, first case of this, decide what to do about naming
@(objc_type=GraphicsContext, objc_name="restoreGraphicsState")
GraphicsContext_restoreGraphicsState :: proc "c" (self: ^GraphicsContext) {
	msgSend(nil, self, "restoreGraphicsState")
}
@(objc_type=GraphicsContext, objc_name="saveGraphicsState")
GraphicsContext_saveGraphicsState :: proc "c" (self: ^GraphicsContext) {
	msgSend(nil, self, "saveGraphicsState")
}
