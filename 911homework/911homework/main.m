//
//  main.m
//  911homework
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject{
    @public
    NSString * _name;
    int _color;
    int _speed;
    int _sex;
    float _weight;
}

-(void)eat;

-(void)bark;

-(void)run;

-(BOOL)cmpColor:(Dog *)otherDog;

-(int)cmpSpeed:(Dog *)otherDog;


@end


@implementation Dog

-(void)eat{
    _weight +=0.5;
    NSLog(@"%@ zai chi, tizhong %f",_name,_weight);
}

-(void)bark{
    NSLog(@"name=%@  color=%d ",_name,_color);
}

-(void)run{
    _weight -=0.6;
    NSLog(@"%@ zai chi, tizhong %f",_name,_weight);
}

-(BOOL)cmpColor:(Dog *)otherDog{
    if (_color == otherDog->_color){
        return YES;
    }else{
        return NO;
    }
}

-(int)cmpSpeed:(Dog *)otherDog{
    return _speed - otherDog->_speed;
}

@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dog *wangcai = [Dog new];
        wangcai->_name = @"wc";
        wangcai->_sex=1;
        wangcai->_speed = 90;
        wangcai->_weight=500;
        wangcai->_color = 5;
        
        [wangcai bark];
        
        
    }
    return 0;
}
