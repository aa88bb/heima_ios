//
//  main.m
//  911classMethod
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        Book *b = [Book new];
        b->_name = @"xyj";
        
        [p readWithBook:b];
     
    }
    return 0;
}
