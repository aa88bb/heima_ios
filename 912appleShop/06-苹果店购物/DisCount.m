//
//  DisCount.m
//  06-苹果店购物
//
//  Created by apple on 15/10/21.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "DisCount.h"

@implementation DisCount

- (float)getDzMoney:(float)money
{
    return money * _rate;
}
@end
