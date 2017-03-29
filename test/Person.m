//
//  Person.m
//  test
//
//  Created by liman on 7/21/16.
//  Copyright © 2016 liman. All rights reserved.
//

#import "Person.h"

@implementation Person

@dynamic dog;
//@dynamic cats;

+ (NSString *)dbName
{
    return @"test_db";
}

+ (NSString *)tableName
{
    return @"Person_table";
}

+ (NSString *)primaryKey
{
    return @"Id";
}

+ (NSArray *)persistentProperties
{
    static NSArray *properties = nil;
    if (!properties) {
        properties = @[
                       @"Id",
                       @"name",
                       @"data",
                       @"arr",
                       @"arr2",
                       @"dic",
                       @"dog",
//                       @"cats",
                       ];
    };
    return properties;
}






- (NSArray<Cat *> *)cats
{
    if (!_cats) {
        _cats = [Cat objectsWhere:@"ORDER BY Id" arguments:nil];
    }
    return _cats;
}

@end
