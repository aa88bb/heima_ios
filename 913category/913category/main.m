//
//  main.m
//  913category
//
//  Created by zhuchenglong on 16/9/13.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+eat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [Person new];
        [p eatFish];
    }
    return 0;
}
