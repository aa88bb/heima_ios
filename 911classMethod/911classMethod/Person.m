//
//  Person.m
//  911classMethod
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)readWithBook:(Book *)book{
    NSLog(@"ta zai du %@",book->_name);
}


@end
