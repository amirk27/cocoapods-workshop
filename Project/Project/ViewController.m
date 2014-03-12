//
//  ViewController.m
//  Project
//
//  Created by Claus Höfele on 12.03.14.
//  Copyright (c) 2014 Claus Höfele. All rights reserved.
//

#import "ViewController.h"

#import "AFNetworking.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self excerciseAFNetworking];
}

- (void)excerciseAFNetworking
{
    NSURL *url = [NSURL URLWithString:@"http://google.de"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Success"
                                                            message:nil
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    
    [operation start];
}


@end
