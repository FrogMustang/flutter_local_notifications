/// Specifies the source for a bitmap used by Android notifications.
enum AndroidBitmapSource { Drawable, FilePath }

/// Specifies the source for icons.
enum AndroidIconSource {
  DrawableResource,
  BitmapFilePath,
  ContentUri,
  FlutterBitmapAsset
}

/// The available notification styles on Android.
enum AndroidNotificationStyle {
  Default,
  BigPicture,
  BigText,
  Inbox,
  Messaging,
  Media
}

enum AndroidNotificationSoundSource {
  RawResource,
  Uri,
}

/// The available actions for managing notification channels.
///
/// [CreateIfNotExists]: will create a channel if it doesn't exist.
/// [Update]: will update the details of an existing channel. Note that some details can not be changed once a channel has been created.
enum AndroidNotificationChannelAction { CreateIfNotExists, Update }

/// The available importance levels for Android notifications.
///
/// Required for Android 8.0+
class Importance {
  const Importance(this.value);

  static const Unspecified = Importance(-1000);
  static const None = Importance(0);
  static const Min = Importance(1);
  static const Low = Importance(2);
  static const Default = Importance(3);
  static const High = Importance(4);
  static const Max = Importance(5);

  /// All the possible values for the [Importance] enumeration.
  static List<Importance> get values =>
      [Unspecified, None, Min, Low, Default, High, Max];

  final int value;
}

/// Priority for notifications on Android 7.1 and lower.
class Priority {
  const Priority(this.value);

  static const Min = Priority(-2);
  static const Low = Priority(-1);
  static const Default = Priority(0);
  static const High = Priority(1);
  static const Max = Priority(2);

  /// All the possible values for the [Priority] enumeration.
  static List<Priority> get values => [Min, Low, Default, High, Max];

  final int value;
}

/// The available alert behaviours for grouped notifications.
enum GroupAlertBehavior { All, Summary, Children }

/// Defines the notification visibility on the lockscreen.
enum NotificationVisibility {
  /// Show this notification on all lockscreens, but conceal sensitive or private information on secure lockscreens.
  Private,

  /// Show this notification in its entirety on all lockscreens.
  Public,

  /// Do not reveal any part of this notification on a secure lockscreen.
  Secret,
}
