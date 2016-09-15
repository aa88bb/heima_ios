//
//  DZFather.h
//  06-苹果店购物
//
//  Created by apple on 15/10/21.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZFather : NSObject
/**
 *  根据原价计算打折价格
 */
- (float)getDzMoney:(float)money;
@end
