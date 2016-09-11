//
//  main.m
//  910homework
//
//  Created by zhuchenglong on 16/9/10.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface Person : NSObject
{
    @public
    int age;
    double height;
    
}

    - (void)study;
@end


@implementation Person

- (void)study
{
    NSLog(@"年龄为%d的人在学习", age);
}
@end





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p->age = 10;
        p->height = 1.78f;
        [p study];
    }
    return 0;
}
