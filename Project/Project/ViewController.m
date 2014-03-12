//
//  ViewController.m
//  Project
//
//  Created by Claus Höfele on 12.03.14.
//  Copyright (c) 2014 Claus Höfele. All rights reserved.
//

#import "ViewController.h"

#import "AFNetworking.h"

#import "AlertViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [ViewController excerciseAFNetworking];
}

+ (void)excerciseAFNetworking
{
    NSURL *url = [NSURL URLWithString:@"http://google.de"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        [AlertViewController showSuccess];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        [AlertViewController showError:error];
    }];
    
    [operation start];
}

@end
