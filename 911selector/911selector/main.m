//
//  main.m
//  911selector
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        person *p = [person new];
        
        SEL c = @selector(show);
        [p performSelector:c];
        
        SEL c1 = @selector(display: );
        [p performSelector:c1 withObject:@"haha"];
        
    }
    return 0;
}
