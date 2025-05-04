#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"fr.Santiago-Emile-Cabrel.Pokedex";

/// The "AccentColor" asset catalog color resource.
static NSString * const ACColorNameAccentColor AC_SWIFT_PRIVATE = @"AccentColor";

/// The "1024" asset catalog image resource.
static NSString * const ACImageName1024 AC_SWIFT_PRIVATE = @"1024";

/// The "114" asset catalog image resource.
static NSString * const ACImageName114 AC_SWIFT_PRIVATE = @"114";

/// The "120" asset catalog image resource.
static NSString * const ACImageName120 AC_SWIFT_PRIVATE = @"120";

/// The "180" asset catalog image resource.
static NSString * const ACImageName180 AC_SWIFT_PRIVATE = @"180";

/// The "29" asset catalog image resource.
static NSString * const ACImageName29 AC_SWIFT_PRIVATE = @"29";

/// The "40" asset catalog image resource.
static NSString * const ACImageName40 AC_SWIFT_PRIVATE = @"40";

/// The "57" asset catalog image resource.
static NSString * const ACImageName57 AC_SWIFT_PRIVATE = @"57";

/// The "58" asset catalog image resource.
static NSString * const ACImageName58 AC_SWIFT_PRIVATE = @"58";

/// The "60" asset catalog image resource.
static NSString * const ACImageName60 AC_SWIFT_PRIVATE = @"60";

/// The "80" asset catalog image resource.
static NSString * const ACImageName80 AC_SWIFT_PRIVATE = @"80";

/// The "87" asset catalog image resource.
static NSString * const ACImageName87 AC_SWIFT_PRIVATE = @"87";

/// The "bg-launch-img" asset catalog image resource.
static NSString * const ACImageNameBgLaunchImg AC_SWIFT_PRIVATE = @"bg-launch-img";

/// The "pikachuLaunch" asset catalog image resource.
static NSString * const ACImageNamePikachuLaunch AC_SWIFT_PRIVATE = @"pikachuLaunch";

#undef AC_SWIFT_PRIVATE
