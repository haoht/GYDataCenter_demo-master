//
//  ViewController.m
//  test
//
//  Created by liman on 6/14/16.
//  Copyright © 2016 liman. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"test";
    
    [self save];
    
    [self check];
}

- (void)save
{
    Dog *d = [Dog new];
    d.Id = 13;
    d.name =  @"penny";
    
    Cat *c1 = [Cat new];
    c1.Id = 9;
    c1.name = @"kitty1";
    
    Cat *c2 = [Cat new];
    c2.Id = 12;
    c2.name = @"kitty2";
    
    Person *p = [Person new];
    p.Id = 111;
    p.name = @"liman2222";
    p.data = UIImagePNGRepresentation([UIImage imageNamed:@"123"]);
    p.arr = @[@"1",
              @"2",
              @"3",
              ];
    p.arr2 = @[
               @{@"1": @"2"},
               @{@"3": @"4"},
               ];
    p.dic = @{
              @"111": @"222",
              };
    p.dog = d;
    p.cats = @[c1, c2];
    
    
    
    [p save];
//    [p.dog save];
//    for (Cat *cat in p.cats) {
//        [cat save];
//    }
}

- (void)check
{
    Person *ppp = (Person *)[Person objectForId:@111];
    Dog *ddd = ppp.dog;
    NSArray *catsss = ppp.cats;
    
    NSLog(@"%@ %@ %@", ppp, ddd, catsss);
}

@end
