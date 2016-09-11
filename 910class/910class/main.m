//
//  main.m
//  910class
//
//  Created by zhuchenglong on 16/9/10.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    @public
    NSString * _name;
    int _age;
    float _weight;
}

-(void)eat:(NSString *)foodName;

-(void)run:(int)steps :(int)km;

+(void)breath;

@end

@implementation Person

-(void)eat:(NSString *)foodName{
    NSLog(@"ganxie %@, xiexie %@",foodName,_name);
}


-(void)run:(int)steps :(int)km{
    NSLog(@"%@ dabu %d zouchu %d",_name,steps,km);
}

+(void)breath{
    NSLog(@"huxi");
}

@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [Person breath];
        Person *zhangsan = [[Person alloc] init];
        zhangsan->_name = @"zsf";
        [zhangsan eat:@"kele"];
        [zhangsan run:3 :10];
        
    }
    return 0;
}
