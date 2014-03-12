//
//  AlertViewController.m
//  Project
//
//  Created by Claus Höfele on 12.03.14.
//  Copyright (c) 2014 Claus Höfele. All rights reserved.
//

#import "AlertViewController.h"

@implementation AlertViewController

+ (void)showSuccess
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Success"
                                                        message:nil
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
    [alertView show];
}

+ (void)showError:(NSError *)error
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:[error localizedDescription]
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
    [alertView show];
}

@end
