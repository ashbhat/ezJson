//
//  ezJson.h
//  ezJson
//
//  Created by Ash Bhat on 4/4/14.
//  Copyright (c) 2014 Ash Bhat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ezJson : UIViewController
@property NSString *urlString;
+(void)returnJsonwithParam:(NSDictionary *)parameters andEndpointString:(NSString *)urlString WithHandler:(void(^)(__weak id result))handler;

@end
