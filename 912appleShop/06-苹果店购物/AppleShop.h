//
//  AppleShop.h
//  06-苹果店购物
//
//  Created by apple on 15/10/21.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shelf.h"

@interface AppleShop : NSObject
/**
 *  商品货架
 */
@property Shelf *shelf;
/**
 *  欢迎语
 */
- (void)sayHi;
@end
