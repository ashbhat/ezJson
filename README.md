ezJson
======

Ridiculously easy HTTP Requests for iOS
======

HTTP calls are now just method

Import ezJson.h into project

#import ezJson.h

Post Request
---
[ezJson returnJsonwithParam:@{@"key" : @"value"} andEndpointString:@"http://ezjson.herokuapp.com/ezJSON" WithHandler:^(__weak id result) {
        NSLog(@"%@", result);
    }];
    
Get Request
---
[ezJson returnJsonwithParam:@{} andEndpointString:@"http://ezjson.herokuapp.com/ezJSON/randomGetParamer" WithHandler:^(__weak id result) {
        NSLog(@"%@", result);
    }];
