# AdPlayerSDK iOS

## Requirements
 * iOS >= 12.0
 * Request tracking authorization (for iOS >= 14):
   https://developer.apple.com/documentation/apptrackingtransparency
 * request GDPR consent (if needed)

## Installation

In XCode:

* navigate to File > Add Package Dependencies

* In  Search or enter Package enter the following URLv
https://github.com/Aniview/ad-player-sdk-ios-spm.git 


## Usage example

AppDelegate.swift
```java
import AdPlayerSDK
import AppTrackingTransparency

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let yourAppStoreUrl = URL(string: ...)!
        AdPlayer.initSdk(storeURL: yourAppStoreUrl)

        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        DispatchQueue.main.async { // ensure the app view is ready
            ATTrackingManager.requestTrackingAuthorization { status in
                print("Tracking: authorized:", status == .authorized)
            }
        }
    }
}
```

YourViewController.swift
```java
import AdPlayerSDK

class YourViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let placement = AdPlayerPlacementView(tagId: tagId)
        placement.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(placement)
        NSLayoutConstraint.activate([
            placement.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            placement.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            placement.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor)
        ])
    }
}
```

## Sample project
[ADPlayerBasicSample](https://github.com/Aniview/ad-player-sdk-ios-pods/tree/main/AdPlayerSample)

## Author

https://aniview.com/

## License

All rights reserved to ANIVIEW LTD 2024
