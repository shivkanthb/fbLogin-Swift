# fbLogin-Swift
integrating facebook login into iOS using Swift

Step 1:
Set up the basic app details on facebook and install the ios SDK from the facebook developers site. The tutorial on doing this step is explained well at https://developers.facebook.com/docs/ios/getting-started/

Step 2: 
Since we are using Swift and the SDK provided by facebook is for objective-C, we need a .h file for bridging objective C and swift.
We shall name this file as Bridge-header.h

Step 3:
In Bridge-header.h include #import <FacebookSDK/FacebookSDK.h> below #define SwiftFb_Bridge_header_h

Step 4:
Goto build settings and search for "swift" 
make sure 'all' and 'combined' are selected for the search results.

Step 5:
Goto the 'Swift Compiler - Code Generation' and set the value of the Objective-C Bridging header as 'SwiftFb/Bridge-header.h'
The SwiftFb is the folder under which I have the Bridge-header.h file. In case you have a different folder name, replace that in the value accordingly.
