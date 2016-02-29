# gcm-ios-swift
GCM + iOS + Swift

###How to use:

Project setup is described here: [GCM for iOS](https://developers.google.com/cloud-messaging/ios/start)

###How to test: 

Use tool like [Cocoa RestClient](http://mmattozzi.github.io/cocoa-rest-client/) to send requests to GCM with:

####HTTP POST request

```
https://gcm-http.googleapis.com/gcm/send
Content-Type:application/json
Authorization:key=AIzaSyAIHGOwTAtPwJdLmK1SCrpzshjmtZvYOoI

{
  "to" : "bk3RNwTe3H0:CI2k_HHwgIpoDKCIZvvDMExUdFQ3P1...",
  "content_available" : false
  "notification" : {
    "body" : "Hello Frost!",
    "title" : "Does Frost love GCM?"
    }
}
```

You should be able to get notification like on screenshot below.

![GCMTest screenshot](https://github.com/sergii-frost/gcm-ios-swift/blob/feature/gcm/iphone_push_screenshot.png)