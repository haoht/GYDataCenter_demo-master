//
//  Cat.m
//  test
//
//  Created by liman on 7/21/16.
//  Copyright © 2016 liman. All rights reserved.
//

#import "Cat.h"

@implementation Cat

+ (NSString *)dbName
{
    return @"test_db";
}

+ (NSString *)tableName
{
    return @"Cat_table";
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
                       ];
    };
    return properties;
}

@end
