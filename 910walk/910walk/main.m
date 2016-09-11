//
//  main.m
//  910walk
//
//  Created by zhuchenglong on 16/9/10.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    @public
    NSString * _name;
    float _weight;
}

-(void)eat;

-(void)walk:(int)steps;

@end



@implementation Person

-(void)eat{
    _weight +=0.6;
    NSLog(@"%@ chi le tizhogn %.2f",_name,_weight);
}

-(void)walk:(int)steps{
    if(steps >= 100){
        _weight -= steps/100 *0.2;
    }
    NSLog(@"tizhong %.2f",_weight);
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *zhangsan = [Person new];
        zhangsan->_name = @"zsf";
        zhangsan->_weight = 100.0;
        [zhangsan eat];
        [zhangsan walk:200];
 
    }
    return 0;
}
