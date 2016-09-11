//
//  main.m
//  911dog
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Person : NSObject{
    @public
    NSString *_name;
    int _age;
    int _sex;
}

-(void)eat;

-(void)takeCareOfKid:(Person *)kid;

-(Person *)giveBirthToKid;


@end


@implementation Person

-(void)eat{
    NSLog(@"chichichi");
}

-(void)takeCareOfKid:(Person *)kid{
    NSLog(@"%@ zai kan mingzi %@ de %d de kid.",_name,kid->_name,kid->_age);
}

-(Person *)giveBirthToKid{
    Person *p = [Person new];
    p->_name = @"fengjie de kid";
    p->_age = 18;
    return p;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *zhangsan = [Person new];
        zhangsan->_name = @"zsf";
        zhangsan->_age = 100;
        Person *kid = [Person new];
        kid->_name = @"zwj";
        kid->_age = 3;
        
        [zhangsan takeCareOfKid:kid];
        
        NSLog(@"hello, I'm %@",zhangsan->_name);
        
        Person *monkey = [zhangsan giveBirthToKid];
        NSLog(@"hello, I'm %@,jinnian %d",monkey->_name,monkey->_age);
    }
    return 0;
}
