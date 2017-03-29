//
//  Dog.h
//  test
//
//  Created by liman on 7/21/16.
//  Copyright © 2016 liman. All rights reserved.
//

#import <GYDataCenter/GYDataCenter.h>

@interface Dog : GYModelObject

@property (assign, nonatomic) NSInteger Id;
@property (strong, nonatomic) NSString *name;

@end
