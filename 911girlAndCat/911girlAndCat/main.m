//
//  main.m
//  911girlAndCat
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Girl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Girl *g = [Girl new];
        
        g->_name=@"zsf";
        g->_birth.year = 1992;
        g->_birth.month = 9;
        g->_birth.day = 8;
        
        g->_gender = 1;
        Cat *c = [Cat new];
        g->_cat = c;
        c->_weight = 10;
        c->hairColor = yellow;
        
        [g feedWithCat:c];
        [g playWithCat:c];
        
        
    }
    return 0;
}
