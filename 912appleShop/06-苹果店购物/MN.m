//
//  MN.m
//  06-苹果店购物
//
//  Created by apple on 15/10/21.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "MN.h"

@implementation MN

- (float)getDzMoney:(float)money
{
    
    return money - (int)(money / _m) * _n;
}
@end
