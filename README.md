# SeinetimeUniversalSDK

[![Version](https://img.shields.io/cocoapods/v/SeinetimeUniversalSDK.svg?style=flat)](https://cocoapods.org/pods/SeinetimeUniversalSDK)
[![License](https://img.shields.io/cocoapods/l/SeinetimeUniversalSDK.svg?style=flat)](https://cocoapods.org/pods/SeinetimeUniversalSDK)
[![Platform](https://img.shields.io/cocoapods/p/SeinetimeUniversalSDK.svg?style=flat)](https://cocoapods.org/pods/SeinetimeUniversalSDK)

Analytics Framework from SEINE TIME

## Installation

SeinetimeUniversalSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SeinetimeUniversalSDK'
```

## Usage

### Init

Add this code to Info.plist and replace your writeKey

```xml
<key>SeinetimeSDKConfig</key>
<dict>
	<key>writeKey</key>
	<string>YOUR_WRITE_KEY_HERE</string>
</dict>
```

By default, we use same WRITE_KEY for both frameworks.

```xml
<key>SeinetimeSDKConfig</key>
<dict>
	<key>writeKey</key>
	<string>YOUR_WRITE_KEY_HERE</string>
</dict>
```

Import the SeinetimeUniversalSDK module in your UIApplicationDelegate

```swift
import SeinetimeUniversalSDK
```

Configure a SeinetimeUniversalSDK shared instance in your app delegate's application(_:didFinishLaunchingWithOptions:) method

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.

    Seinetime.start()


    return true
}
```

### Analytics

Analytics will be initialized and collect data and support manually collect event

#### Track Events

```swift
Seinetime.track(name: "Event name", properties: [String : Any]?)
```

You can custom properties anything you want

```swift
struct UserLoggedInEventProperties: Codable {
    var username: String
    var mail: String
}

let userLoggedInEventProperties = UserLoggedInEventProperties(
    username: "tester",
    mail: "tester@mail.com"
)

Seinetime.track(name: "User LoggedIn", properties: userLoggedInEventProperties)

```

#### Identify Events

```swift
Seinetime.identify(userId: "UserID")
```

In case of you need to append more information

```swift
struct UserTraits: Codable {
    var name: String
    var birthday: String
    var phoneNumber: String
}

let traits = UserTraits(
    name: "Tester",
    birthday: "20/12/2022",
    phoneNumber: "+84909090909"
)

Seinetime.identify(userId: "UserID", traits: traits)
```

#### Screen Events

```swift
Seinetime.screen(title: "LoginScreen")
```

Properties are extra pieces of information that describe the screen. They can be anything you want.

```swift
struct ScreenProperties: Codable {
    var name: String
    var loginMethod: String
}

let properties = ScreenProperties(
    name: "Login",
    loginMethod: "Apple ID"
)

Seinetime.screen(title: "LoginScreen", properties: properties)
```


## Author

Seinetime, contact@seinetime.ai

## License

SeinetimeUniversalSDK is available under the MIT license. See the LICENSE file for more info.
