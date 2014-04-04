//
//  ViewController.m
//  ezJson
//
//  Created by Ash Bhat on 4/4/14.
//  Copyright (c) 2014 Ash Bhat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self postRequest];
    [self getRequest];
}

-(void)postRequest{
    [ezJson returnJsonwithParam:@{@"key" : @"value"} andEndpointString:@"http://ezjson.herokuapp.com/ezJSON" WithHandler:^(__weak id result) {
        NSLog(@"%@", result);
    }];
}

-(void)getRequest{
    [ezJson returnJsonwithParam:@{} andEndpointString:@"http://ezjson.herokuapp.com/ezJSON/test" WithHandler:^(__weak id result) {
        NSLog(@"%@", result);
    }];
}

@end
