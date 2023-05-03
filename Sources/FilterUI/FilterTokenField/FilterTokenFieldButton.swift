import AppKit

open class FilterTokenFieldButton: NSButton {
  open override var canBecomeKeyView: Bool { false }

  public override init(frame frameRect: NSRect) {
    super.init(frame: frameRect)

    isBordered = false
    focusRingType = .none
    imageScaling = .scaleNone
    imagePosition = .imageOnly
  }

  public required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
