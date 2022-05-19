# Filter UI

Filter field for AppKit and SwiftUI.

![](https://github.com/freyaariel/filter-ui/blob/main/Screenshots/FilterUI.png?raw=true)


## Installation

```swift
.package(url: "https://github.com/freyaariel/filter-ui.git", branch: "main"),
```

```swift
import FilterUI
```


## Overview

### Filter Field

```swift
FilterField(text: $filterText)
```

![](https://github.com/freyaariel/filter-ui/blob/main/Screenshots/BasicUsage~light.png?raw=true#gh-light-mode-only)
![](https://github.com/freyaariel/filter-ui/blob/main/Screenshots/BasicUsage~dark.png?raw=true#gh-dark-mode-only)


<!--### Filter Field with Custom Prompt-->
<!---->
<!--```swift-->
<!--FilterField(text: $filterText, prompt: "Hello")-->
<!--```-->
<!---->

### Filter Field with Accessory Toggles

Toggles can be added to the end of the filter field by using `FilterFieldToggle`.

```swift
FilterField(text: $filterText, isFiltering: locationRequired) {
  FilterFieldToggle(systemImage: "location.square", isOn: $locationRequired)
    .help("Show only items with location data")
}
```

![](https://github.com/freyaariel/filter-ui/blob/main/Screenshots/AccessoryToggles~light.png?raw=true#gh-light-mode-only)
![](https://github.com/freyaariel/filter-ui/blob/main/Screenshots/AccessoryToggles~dark.png?raw=true#gh-dark-mode-only)


### AppKit-Compatible Filter Field

`FilterField`’s underlying `NSSearchField` subclass can be used directly by importing `FilterUICore`.

```swift
import FilterUICore

FilterUICore.FilterField(frame: …)
```


### Menu Filtering

FilterUI provides an extension for `NSMenu` which lets you to set `allowsFiltering` to `true` in order to add a filter field to a menu, similar to how menus in Xcode are filterable.

Menu filtering works by replacing the standard keystroke-based selection (type select). When a user presses a key, the filter field appears at the top of the menu and is focused.

While typing, menu items are filtered based on fuzzy search matching of the items’ titles. Matching parts of the titles will be displayed in bold, while non-matching parts are grayed out.


## Roadmap

### 1.0

* Find solution to border issue
* Resolve text wrapping issue


### Later

* More sizes?
* Menu w/ pill-shaped icon?
* Pixel-perfect 13 px filter icon?


## Acknowledgements

Fuzzy search implementation is based on [FuzzySearch](https://github.com/viktorasl/FuzzySearch) by Viktoras Laukevičius.

