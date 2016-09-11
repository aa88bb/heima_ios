//
//  main.m
//  911example
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gun : NSObject{
    @public
    NSString *_gunType;
    int _bulletCount;
}

-(void)shoot;



@end

@implementation Gun
-(void)shoot{
    NSLog(@"%@ de kaihuo, sheng zidan %d",_gunType,_bulletCount);
}


@end


@interface Person : NSObject{
    @public
    NSString *_name;
    int _blood;
}
-(void)fireByGun:(Gun *)gun;

@end

@implementation Person
-(void)fireByGun:(Gun *)gun{
    NSLog(@"%@ naqi %@, kaihuo",_name,gun->_gunType);
    [gun shoot];
}


@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *zhangsan = [Person new];
        zhangsan->_name = @"zsf";
        
        Gun *ak = [Gun new];
        ak->_gunType = @"ak47";
        ak->_bulletCount =4;
        
        [zhangsan fireByGun:ak];
        
    }
    return 0;
}
