//
//  ezJson.m
//  ezJson
//
//  Created by Ash Bhat on 4/4/14.
//  Copyright (c) 2014 Ash Bhat. All rights reserved.
//

#import "ezJson.h"

@implementation ezJson

+(void)returnJsonwithParam:(NSDictionary *)parameters andEndpointString:(NSString *)urlString WithHandler:(void(^)(__weak id result))handler
{
    NSURLSessionConfiguration *defaultConfigObject = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: defaultConfigObject delegate: nil delegateQueue: [NSOperationQueue mainQueue]];
    NSURL * url = [NSURL URLWithString:urlString];
    NSMutableURLRequest * urlRequest = [NSMutableURLRequest requestWithURL:url];
    NSDictionary * params = parameters;
    NSData *jsondata = [NSJSONSerialization dataWithJSONObject:params
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:nil];
    [urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
    [urlRequest setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [urlRequest setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[jsondata length]] forHTTPHeaderField:@"Content-Length"];
    
    [urlRequest setHTTPMethod:@"POST"];
    [urlRequest setHTTPBody:jsondata];
    
    NSURLSessionDataTask * dataTask =[defaultSession dataTaskWithRequest:urlRequest
                                                       completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                           if(error == nil)
                                                           {
                                                               id returnedObject = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingMutableLeaves error:nil];
                                                               handler(returnedObject);
                                                           }
                                                           else{
                                                               NSLog(@"error %@",error);
                                                           }
                                                       }];
    [dataTask resume];
}

@end
