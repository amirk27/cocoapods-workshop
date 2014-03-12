//
//  AlertViewController.h
//  Project
//
//  Created by Claus Höfele on 12.03.14.
//  Copyright (c) 2014 Claus Höfele. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlertViewController : NSObject

+ (void)showSuccess;
+ (void)showError:(NSError *)error;

@end
