ezJson
======

Ridiculously easy HTTP Requests for iOS
======

HTTP calls are now just a single method


-----
Import ezJson.h into project
-----



#import ezJson.h

Post Request
---

```
[ezJson returnJsonwithParam:@{@"key" : @"value"} andEndpointString:@"http://postRequestURL.com" WithHandler:^(__weak id result) {

NSLog(@"%@", result);

}];
```
    
Get Request
---

```
[ezJson returnJsonwithParam:@{} andEndpointString:@"http://getRequestURL.com" WithHandler:^(__weak id result) {

NSLog(@"%@", result);

}];
```
