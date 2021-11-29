# TLCustomMask

[![CI Status](http://img.shields.io/travis/Edudjr/TLCustomMask.svg?style=flat)](https://travis-ci.org/Edudjr/TLCustomMask)
[![Version](https://img.shields.io/cocoapods/v/TLCustomMask.svg?style=flat)](http://cocoapods.org/pods/TLCustomMask)
[![License](https://img.shields.io/cocoapods/l/TLCustomMask.svg?style=flat)](http://cocoapods.org/pods/TLCustomMask)
[![Platform](https://img.shields.io/cocoapods/p/TLCustomMask.svg?style=flat)](http://cocoapods.org/pods/TLCustomMask)

**This component is not supported anymore. Instead, use the [MaskedUITextField](https://github.com/Columbina/MaskedUITextField) as it is newer and allows creating much more flexible masks. If you just need the mask formatter decoupled from UIKit, check [MaskedFormatter](https://github.com/Columbina/MaskedFormatter).**

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Numeric mask example:

![image](https://s19.postimg.cc/8uhiyin6b/numeric_Mask.gif)

Characters mask example:

![image](https://s19.postimg.cc/z2snnvzk3/characters_Mask.gif)

Mixed mask example:

![image](https://s19.postimg.cc/kjlimgypf/mixed_Mask.gif)

## How to Use
**CustomMask** takes a string and returns it with the matching pattern.
Usualy, it is used inside the shouldChangeCharactersInRange method

### Step 1 - Import
```swift
import TLCustomMask
```
### Step 2 - Instantiate
```swift
var customMask = TLCustomMask()
```
### Step 3 - Give it a pattern
```swift
customMask.formattingPattern = "$$.$$/$$-$"
```
### Step 4 - Present    
If you just want to format a string and present it to the user, do:
```swift
yourTextField.text = customMask.formatString(string: "1234567")
```
If you want **real time** formatting, do:

```swift
extension YourViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {

        yourTextField.text = customMask.formatStringWithRange(range: range, string: string)

        return false
    }
}
```
### Step 5 - Profit
Now you are ready to go!


Alternatively, you can instantiate it with a pattern already:
```swift
var customMask = TLCustomMask(formattingPattern: "$$$-$$")
```

> Use $ for digits  
> Use * for characters [a-zA-Z]

## Installation

TLCustomMask is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TLCustomMask"
```

## Author

Eduardo Domene Junior, eduardo.djr@hotmail.com

## License

TLCustomMask is available under the MIT license. See the LICENSE file for more info.
