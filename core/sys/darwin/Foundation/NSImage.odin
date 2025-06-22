package objc_Foundation

@(objc_class="NSImage")
Image :: struct {using _: Object}

CompositingOperation :: enum UInteger {
	Clear           = 0,
	Copy            = 1,
	SourceOver      = 2,
	SourceIn        = 3,
	SourceOut       = 4,
	SourceAtop      = 5,
	DestinationOver = 6,
	DestinationIn   = 7,
	DestinationOut  = 8,
	DestinationAtop = 9,
	XOR             = 10,
	PlusDarker      = 11,
	PlusLighter     = 12,
	Multiply        = 13,
	Screen          = 14,
	Overlay         = 15,
	Darken          = 16,
	Lighten         = 17,
	ColorDodge      = 18,
	ColorBurn       = 19,
	SoftLight       = 20,
	HardLight       = 21,
	Difference      = 22,
	Exclusion       = 23,
	Hue             = 24,
	Saturation      = 25,
	Color           = 26,
	Luminosity      = 27,
}

// Creating Images by Name (untested)
@(objc_type=Image, objc_name="imageNamed", objc_is_class_method=true)
Image_named :: proc "c" (name: ^String) -> ^Image {
	return msgSend(^Image, Image, "imageNamed:", name)
}
@(objc_type=Image, objc_name="imageWithSystemSymbolNameAccessibilityDescription", objc_is_class_method=true)
Image_imageWithSystemSymbolNameAccessibilityDescription :: proc "c" (name: ^String, description: ^String) -> ^Image {
	return msgSend(^Image, Image, "imageWithSystemSymbolName:accessibilityDescription:", name, description)
}
@(objc_type=Image, objc_name="imageWithSystemSymbolNameVariableValueAccessibilityDescription", objc_is_class_method=true)
Image_imageWithSystemSymbolNameVariableValueAccessibilityDescription :: proc "c" (name: ^String, value: f64, description: ^String) -> ^Image {
	return msgSend(^Image, Image, "imageWithSystemSymbolName:variableValue:accessibilityDescription:", name, value, description)
}
@(objc_type=Image, objc_name="imageWithSystemSymbolNameVariableValue", objc_is_class_method=true)
Image_imageWithSystemSymbolNameVariableValue :: proc "c" (name: ^String, value: f64) -> ^Image {
	return msgSend(^Image, Image, "imageWithSystemSymbolName:variableValue:", name, value)
}
@(objc_type=Image, objc_name="imageWithSystemSymbolNameBundleVariableValue", objc_is_class_method=true)
Image_imageWithSystemSymbolNameBundleVariableValue :: proc "c" (name: ^String, bundle: Bundle, value: f64) -> ^Image {
	return msgSend(^Image, Image, "imageWithSystemSymbolName:bundle:variableValue:", name, bundle, value)
}
@(objc_type=Image, objc_name="setName")
Image_setName :: proc "c" (self: ^Image, name: ^String) -> BOOL {
	return msgSend(BOOL, self, "setName:", name)
}
@(objc_type=Image, objc_name="name")
Image_name :: proc "c" (self: ^Image) -> ^String {
	return msgSend(^String, self, "name")
}

// Drawing Images (untested)
@(objc_type=Image, objc_name="drawInRect")
Image_drawInRect :: proc "c" (self: ^Image, rect: Rect) {
	msgSend(nil, self, "drawInRect:", rect)
}
@(objc_type=Image, objc_name="drawAtPointFromRectOperationFraction")
Image_drawAtPointFromRectOperationFraction :: proc "c" (self: ^Image, point: Point, from: Rect, op: CompositingOperation, delta: f64) {
	msgSend(nil, self, "drawAtPoint:fromRect:operation:fraction:", point, from, op, delta)
}
@(objc_type=Image, objc_name="drawInRectFromRectOperationFraction")
Image_drawInRectFromRectOperationFraction :: proc "c" (self: ^Image, rect: Rect, from: Rect, op: CompositingOperation, delta: f64) {
	msgSend(nil, self, "drawInRect:fromRect:operation:fraction:", rect, from, op, delta)
}
@(objc_type=Image, objc_name="drawInRectFromRectOperationFractionRespectFlippedHints")
Image_drawInRectFromRectOperationFractionRespectFlippedHints :: proc "c" (self: ^Image, rect: Rect, from: Rect, op: CompositingOperation, delta: f64, respect_flipped: BOOL, hints: ^Dictionary) {
	msgSend(nil, self, "drawInRect:fromRect:operation:fraction:respectFlipped:hints", rect, from, op, delta, respect_flipped, hints)
}
// technically rep is an NSImageRep, but that's an interface that Image implements
@(objc_type=Image, objc_name="drawRepresentationInRect")
Image_drawRepresentationInRect :: proc "c" (self: ^Image, rep: ^Image, rect: Rect) -> BOOL {
	return msgSend(BOOL, self, "drawRepresentation:inRect:", rep, rect)
}

// Setting Attributes of Images
@(objc_type=Image, objc_name="size")
Image_size :: proc "c" (self: ^Image) -> Size {
	return msgSend(Size, self, "size")
}
@(objc_type=Image, objc_name="setSize")
Image_setSize :: proc "c" (self: ^Image, size: ^Size) {
	msgSend(Size, self, "setSize:", size)
}
@(objc_type=Image, objc_name="isTemplate")
Image_isTemplate :: proc "c" (self: ^Image) -> BOOL {
	return msgSend(BOOL, self, "isTemplate")
}
@(objc_type=Image, objc_name="setTemplate")
Image_setTemplate :: proc "c" (self: ^Image, template: BOOL) {
	msgSend(BOOL, self, "setTemplate:", template)
}

ImageNameApplicationIcon :: "NSApplicationIcon"
ImageNameQuickLookTemplate :: "NSQuickLookTemplate"
ImageNameBluetoothTemplate :: "NSBluetoothTemplate"
ImageNameBonjour :: "NSBonjour"
ImageNameComputer :: "NSComputer"
ImageNameFolderBurnable :: "NSFolderBurnable"
ImageNameFolderSmart :: "NSFolderSmart"
ImageNameFolder :: "NSFolder"
ImageNameNetwork :: "NSNetwork"
ImageNameMobileMe :: "MobileMe"
ImageNameUser :: "NSUser"
ImageNameUserGroup :: "NSUserGroup"
ImageNameUserGuest :: "NSUserGuest"
ImageNameEveryone :: "NSEveryone"
ImageNameHomeTemplate :: "NSHomeTemplate"
ImageNameBookmarksTemplate :: "NSBookmarksTemplate"
ImageNameCaution :: "NSCaution"
ImageNameStatusAvailable :: "NSStatusAvailable"
ImageNameStatusUnavailable :: "NSStatusUnavailable"
ImageNameStatusNone :: "NSStatusNone"
ImageNameStatusPartiallyAvailable :: "NSStatusPartiallyAvailable"
ImageNameShareTemplate :: "NSShareTemplate"
ImageNameInfo :: "NSInfo"
ImageNameInvalidDataFreestandingTemplate :: "NSInvalidDataFreestandingTemplate"
ImageNameAdvanced :: "NSAdvanced"
ImageNamePreferencesGeneral :: "NSPreferencesGeneral"
ImageNameUserAccounts :: "NSUserAccounts"
ImageNameDotMac :: "DotMac"
ImageNameiDisk :: "iDisk"
ImageNameToolbarCustomizeIcon :: "NSToolbarCustomizeIcon"
ImageNameToolbarSpaceIcon :: "NSToolbarSpaceIcon"
ImageNameToolbarFlexibleSpaceIcon :: "NSToolbarFlexibleSpaceIcon"
ImageNameToolbarPrintIcon :: "NSToolbarPrintIcon"
ImageNameToolbarShowColorsIcon :: "NSToolbarShowColorsIcon"
ImageNameToolbarShowFontsIcon :: "NSToolbarShowFontsIcon"
ImageNameActionTemplate :: "NSActionTemplate"
ImageNameSmartBadgeTemplate :: "NSSmartBadgeTemplate"
ImageNameIconViewTemplate :: "NSIconViewTemplate"
ImageNameListViewTemplate :: "NSListViewTemplate"
ImageNameColumnViewTemplate :: "NSColumnViewTemplate"
ImageNameFlowViewTemplate :: "NSFlowViewTemplate"
ImageNamePathTemplate :: "NSPathTemplate"
ImageNameLockLockedTemplate :: "NSLockLockedTemplate"
ImageNameLockUnlockedTemplate :: "NSLockUnlockedTemplate"
ImageNameGoRightTemplate :: "NSGoRightTemplate"
ImageNameGoLeftTemplate :: "NSGoLeftTemplate"
ImageNameRightFacingTriangleTemplate :: "NSRightFacingTriangleTemplate"
ImageNameLeftFacingTriangleTemplate :: "NSLeftFacingTriangleTemplate"
ImageNameAddTemplate :: "NSAddTemplate"
ImageNameRemoveTemplate :: "NSRemoveTemplate"
ImageNameRevealFreestandingTemplate :: "NSRevealFreestandingTemplate"
ImageNameFollowLinkFreestandingTemplate :: "NSFollowLinkFreestandingTemplate"
ImageNameEnterFullScreenTemplate :: "NSEnterFullScreenTemplate"
ImageNameExitFullScreenTemplate :: "NSExitFullScreenTemplate"
ImageNameStopProgressTemplate :: "NSStopProgressTemplate"
ImageNameStopProgressFreestandingTemplate :: "NSStopProgressFreestandingTemplate"
ImageNameRefreshTemplate :: "NSRefreshTemplate"
ImageNameRefreshFreestandingTemplate :: "NSRefreshFreestandingTemplate"
ImageNameMenuOnStateTemplate :: "NSMenuOnStateTemplate"
ImageNameMenuMixedStateTemplate :: "NSMenuMixedStateTemplate"
ImageNameSlideshowTemplate :: "NSSlideshowTemplate"
ImageNameFontPanel :: "NSFontPanel"
ImageNameColorPanel :: "NSColorPanel"
ImageNameTrashEmpty :: "NSTrashEmpty"
ImageNameTrashFull :: "NSTrashFull"
ImageNameAirDropTemplate :: "NSAirDrop"
ImageNameFinder :: "Finder"
ImageNameAlertNote :: "NSAlertNote"
ImageNameAlertCaution :: "NSAlertCaution"
ImageNameAlertStop :: "NSAlertStop"
ImageNameTouchBarAddDetailTemplate :: "NSTouchBarAddDetailTemplate"
ImageNameTouchBarAddTemplate :: "NSTouchBarAddTemplate"
ImageNameTouchBarAlarmTemplate :: "NSTouchBarAlarmTemplate"
ImageNameTouchBarAudioInputMuteTemplate :: "NSTouchBarAudioInputMuteTemplate"
ImageNameTouchBarAudioInputTemplate :: "NSTouchBarAudioInputTemplate"
ImageNameTouchBarAudioOutputMuteTemplate :: "NSTouchBarAudioOutputMuteTemplate"
ImageNameTouchBarAudioOutputVolumeHighTemplate :: "NSTouchBarAudioOutputVolumeHighTemplate"
ImageNameTouchBarAudioOutputVolumeLowTemplate :: "NSTouchBarAudioOutputVolumeLowTemplate"
ImageNameTouchBarAudioOutputVolumeMediumTemplate :: "NSTouchBarAudioOutputVolumeMediumTemplate"
ImageNameTouchBarAudioOutputVolumeOffTemplate :: "NSTouchBarAudioOutputVolumeOffTemplate"
ImageNameTouchBarBookmarksTemplate :: "NSTouchBarBookmarksTemplate"
ImageNameTouchBarColorPickerFill :: "NSTouchBarColorPickerFill"
ImageNameTouchBarColorPickerFont :: "NSTouchBarColorPickerFont"
ImageNameTouchBarColorPickerStroke :: "NSTouchBarColorPickerStroke"
ImageNameTouchBarCommunicationAudioTemplate :: "NSTouchBarCommunicationAudioTemplate"
ImageNameTouchBarCommunicationVideoTemplate :: "NSTouchBarCommunicationVideoTemplate"
ImageNameTouchBarComposeTemplate :: "NSTouchBarComposeTemplate"
ImageNameTouchBarDeleteTemplate :: "NSTouchBarDeleteTemplate"
ImageNameTouchBarDownloadTemplate :: "NSTouchBarDownloadTemplate"
ImageNameTouchBarEnterFullScreenTemplate :: "NSTouchBarEnterFullScreenTemplate"
ImageNameTouchBarExitFullScreenTemplate :: "NSTouchBarExitFullScreenTemplate"
ImageNameTouchBarFastForwardTemplate :: "NSTouchBarFastForwardTemplate"
ImageNameTouchBarFolderCopyToTemplate :: "NSTouchBarFolderCopyToTemplate"
ImageNameTouchBarFolderMoveToTemplate :: "NSTouchBarFolderMoveToTemplate"
ImageNameTouchBarFolderTemplate :: "NSTouchBarFolderTemplate"
ImageNameTouchBarGetInfoTemplate :: "NSTouchBarGetInfoTemplate"
ImageNameTouchBarGoBackTemplate :: "NSTouchBarGoBackTemplate"
ImageNameTouchBarGoDownTemplate :: "NSTouchBarGoDownTemplate"
ImageNameTouchBarGoForwardTemplate :: "NSTouchBarGoForwardTemplate"
ImageNameTouchBarGoUpTemplate :: "NSTouchBarGoUpTemplate"
ImageNameTouchBarHistoryTemplate :: "NSTouchBarHistoryTemplate"
ImageNameTouchBarIconViewTemplate :: "NSTouchBarIconViewTemplate"
ImageNameTouchBarListViewTemplate :: "NSTouchBarListViewTemplate"
ImageNameTouchBarMailTemplate :: "NSTouchBarMailTemplate"
ImageNameTouchBarNewFolderTemplate :: "NSTouchBarNewFolderTemplate"
ImageNameTouchBarNewMessageTemplate :: "NSTouchBarNewMessageTemplate"
ImageNameTouchBarOpenInBrowserTemplate :: "NSTouchBarOpenInBrowserTemplate"
ImageNameTouchBarPauseTemplate :: "NSTouchBarPauseTemplate"
ImageNameTouchBarPlayPauseTemplate :: "NSTouchBarPlayPauseTemplate"
ImageNameTouchBarPlayTemplate :: "NSTouchBarPlayTemplate"
ImageNameTouchBarQuickLookTemplate :: "NSTouchBarQuickLookTemplate"
ImageNameTouchBarRecordStartTemplate :: "NSTouchBarRecordStartTemplate"
ImageNameTouchBarRecordStopTemplate :: "NSTouchBarRecordStopTemplate"
ImageNameTouchBarRefreshTemplate :: "NSTouchBarRefreshTemplate"
ImageNameTouchBarRemoveTemplate :: "NSTouchBarRemoveTemplate"
ImageNameTouchBarRewindTemplate :: "NSTouchBarRewindTemplate"
ImageNameTouchBarRotateLeftTemplate :: "NSTouchBarRotateLeftTemplate"
ImageNameTouchBarRotateRightTemplate :: "NSTouchBarRotateRightTemplate"
ImageNameTouchBarSearchTemplate :: "NSTouchBarSearchTemplate"
ImageNameTouchBarShareTemplate :: "NSTouchBarShareTemplate"
ImageNameTouchBarSidebarTemplate :: "NSTouchBarSidebarTemplate"
ImageNameTouchBarSkipAhead15SecondsTemplate :: "NSTouchBarSkipAhead15SecondsTemplate"
ImageNameTouchBarSkipAhead30SecondsTemplate :: "NSTouchBarSkipAhead30SecondsTemplate"
ImageNameTouchBarSkipAheadTemplate :: "NSTouchBarSkipAheadTemplate"
ImageNameTouchBarSkipBack15SecondsTemplate :: "NSTouchBarSkipBack15SecondsTemplate"
ImageNameTouchBarSkipBack30SecondsTemplate :: "NSTouchBarSkipBack30SecondsTemplate"
ImageNameTouchBarSkipBackTemplate :: "NSTouchBarSkipBackTemplate"
ImageNameTouchBarSlideshowTemplate :: "NSTouchBarSlideshowTemplate"
ImageNameTouchBarTagIconTemplate :: "NSTouchBarTagIconTemplate"
ImageNameTouchBarTextBoldTemplate :: "NSTouchBarTextBoldTemplate"
ImageNameTouchBarTextBoxTemplate :: "NSTouchBarTextBoxTemplate"
ImageNameTouchBarTextCenterAlignTemplate :: "NSTouchBarTextCenterAlignTemplate"
ImageNameTouchBarTextItalicTemplate :: "NSTouchBarTextItalicTemplate"
ImageNameTouchBarTextJustifiedAlignTemplate :: "NSTouchBarTextJustifiedAlignTemplate"
ImageNameTouchBarTextLeftAlignTemplate :: "NSTouchBarTextLeftAlignTemplate"
ImageNameTouchBarTextListTemplate :: "NSTouchBarTextListTemplate"
ImageNameTouchBarTextRightAlignTemplate :: "NSTouchBarTextRightAlignTemplate"
ImageNameTouchBarTextStrikethroughTemplate :: "NSTouchBarTextStrikethroughTemplate"
ImageNameTouchBarTextUnderlineTemplate :: "NSTouchBarTextUnderlineTemplate"
ImageNameTouchBarUserAddTemplate :: "NSTouchBarUserAddTemplate"
ImageNameTouchBarUserGroupTemplate :: "NSTouchBarUserGroupTemplate"
ImageNameTouchBarUserTemplate :: "NSTouchBarUserTemplate"
ImageNameTouchBarVolumeDownTemplate :: "NSTouchBarVolumeDownTemplate"
ImageNameTouchBarVolumeUpTemplate :: "NSTouchBarVolumeUpTemplate"
ImageNameIChatTheaterTemplate :: "NSIChatTheaterTemplate"
ImageNameGeneral :: "NSGeneral"
ImageNamePath :: "Path"
