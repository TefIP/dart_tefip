/// Defines the available transition animations for the
/// display carousel feature.
///
/// This enum controls how images transition when
/// rendered sequentially on the terminal display.
///
/// Possible values:
/// - [fade]: Applies a fade-in/fade-out effect between images.
/// - [slide]: Applies a sliding transition effect.
/// - [none]: Disables transition animation.
enum TefIPCarouselTransition {
  /// Fade transition between images.
  fade,

  /// Slide transition between images.
  slide,

  /// No transition effect.
  none,
}