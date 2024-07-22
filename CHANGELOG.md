# CHANGELOG

## Version 1.6.0
**2024-07-21**

- Updated to ensure the cache is checked before trying to download the image - #68 - @joaolfp
- Bump activesupport from 5.2.8.1 to 6.1.7.5 - #69 - @dependabot
- Bump rexml from 3.2.9 to 3.3.2 - #70 - @dependabot

## Version 1.5.0
**2024-03-24**

- Added visionOS Support

## Version 1.4.0
**2024-01-06**

- Fix error synchronous URL loading with SwiftUI
- MagicImages now requires iOS 13+ and tvOS 13+

## Version 1.3.0
**2023-10-02**

- Add cache support
- New parameter for placeholder (When the api fails, the placeholder image will appear)
- Remove interface builder support
- Updated documentation

## Version 1.2.0
**2023-09-28**

- SwiftUI Support

## Version 1.1.0
**2023-09-25**

- MagicImages now requires iOS 12+ and tvOS 12+.

## Version 1.0.0
**2023-08-22**

- Added new parameters to load local image
- Improved project structure

## Version 0.5.0
**2023-08-19**

- Fix SwiftLint error (For where)
- We will no longer support CocoaPods and Carthage

## Version 0.4.3
**2021-10-31**

- Add support to tvOS

## Version 0.3.3
**2021-10-27**

- Add support to Carthage and CocoaPods

## Version 0.2.3
**2021-10-27**

- Fix support maskedCorners

## Version 0.1.3
**2021-10-24**

- Add support to Interface Builder - Circle and Rounded Edges
- Remove mask corners and add rounded corners
- Before .isSides(measure: 50, mask: [.layerMaxXMaxYCorner, .layerMinXMinYCorner]) and
now .isSides([.topLeft, .bottomRight], measures: 50)

## Version 0.0.3
**2021-04-23**

- Now the framework is more secure, continuous integration has been added to build and verify the tests.

## Version 0.0.2
**2021-04-05**

### Release version

- Add discardableResult in start
