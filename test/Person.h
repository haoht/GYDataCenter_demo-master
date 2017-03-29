//
//  Person.h
//  test
//
//  Created by liman on 7/21/16.
//  Copyright © 2016 liman. All rights reserved.
//

#import <GYDataCenter/GYDataCenter.h>
#import "Dog.h"
#import "Cat.h"

@interface Person : GYModelObject

@property (assign, nonatomic) NSInteger Id;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSData *data;
@property (strong, nonatomic) NSArray *arr;
@property (strong, nonatomic) NSArray *arr2;
@property (strong, nonatomic) NSDictionary *dic;

@property (strong, nonatomic) Dog *dog;
@property (strong, nonatomic) NSArray<Cat *> *cats;

@end
