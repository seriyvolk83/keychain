# Keychain83 🔐

Simple utility for storing data in a keychain. 

## Installation

### CocoaPods (iOS 10+)

You can use [CocoaPods](http://cocoapods.org/) to install `Keychain83` by adding it to your `Podfile`:

```ruby
platform :ios, '10.0'
use_frameworks!

target 'MyApp' do
pod 'Keychain83'
end
```

You can provide direct path to the library:

```ruby
platform :ios, '10.0'
use_frameworks!

target 'MyApp' do
pod 'Keychain83', :git => 'https://github.com/seriyvolk83/keychain.git'
end
```

## Usage

```swift
let keychainUtility = Keychain(service: "My Keychain")

let key = "myAccount"

// Adding 🔑
keychainUtility[key] = "password123"

// Updating 🗝
keychainUtility[key] = "passwordABC"

// Deleting 🤷🏻‍♂️
keychainUtility[key] = nil
```

## Updates

You can request the changes you need (e.g. support other Apple Keychain classes) and I will glad to help to implement it.

Consider to donate a few $ using "♡ Sponsor" button.
