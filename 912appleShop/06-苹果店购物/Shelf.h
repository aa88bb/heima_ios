//
//  Shelf.h
//  06-苹果店购物
//
//  Created by apple on 15/10/21.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shelf : NSObject
/**
 *  手机货架
 */
@property NSMutableArray *phoneArray;
/**
 *  电脑货架
 */
@property NSMutableArray *macArray;
/**
 *  平板
 */
@property NSMutableArray *padArray;


/**
 *  往货架上面添加商品
 */
- (void)addGoodsWithName:(NSString *)name andCount:(int)count;
/**
 *  从货架上面取商品
 */
- (NSMutableArray *)getGoodsWithName:(NSString *)name andCount:(int)count;
/**
 *  展示库存
 */
- (void)show;
@end







