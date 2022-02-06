# Pre-work - *TipCalculator*

**TipCalculator** is a tip calculator application for iOS.

Submitted by: **Longxiang Chen**

Time spent: **7** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Slider to adjust tip percentage
- [X] Adjusted segmented control so the slider changes according to the selected segment
- [X] Added a slider to adjust number of splits and implemented a split calculator (price per person)
- [X] Changed UI fonts and added a simple animation to the tip slider when a segment is selected

## Video Walkthrough

Here's a walkthrough of implemented user stories:

Initial Version:
<img src='https://i.imgur.com/blemteQ.gif' title='Prework Walthrough' width='' alt='Gif Walkthrough' />

Improved Version:
<img src='https://i.imgur.com/BAZ4hxU.mp4' title='Tip Calculator V1.1' width='' alt='Video Walkthrough' />

Video created with [Quicktime Webplayer]

## Notes

The base requirements were relatively easy to produce, as well as the slider for the tip percentage control. The conversion of the total and stepCounter to Doubles was a little difficult to manage(I previously had UIStepper, but removed it due to issues with updating the split value). I tried to convert the UIStepper value to Double so I could divide the total by that number for the split price. I used Double(sender.value).description for the number of splits, but it stayed as a String, in turn did not allow me to divide the total by the number of people splitting. Another challenge was making sure that both tip and total were updated correctly as the slider was changing. I also learned from my mistakes as to be careful when naming IBOutlets and IBActions, because my app would crash after certain events due to certain outlets being incorrectly connected.

Update: Added split, adjusted UI and added animations for the tip slider. Made the billAmountTextField firstResponder and set the keyboard format to decimal numpad. 
  
## License

    Copyright [2022] [Longxiang Chen]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
