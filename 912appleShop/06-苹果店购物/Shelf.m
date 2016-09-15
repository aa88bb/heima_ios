//
//  Shelf.m
//  06-苹果店购物
//
//  Created by apple on 15/10/21.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "Shelf.h"
#import "Phone.h"
#import "Pad.h"
#import "Mac.h"

@implementation Shelf
NSString *phoneName = @"iPhone";
NSString *padName = @"iPad";
NSString *macName = @"iMac";
/**
 *  往货架上面添加商品
 */
- (void)addGoodsWithName:(NSString *)name andCount:(int)count
{
    if ([name isEqualToString:phoneName]) {
        for (int i = 0; i < count; i ++) {
            // 创建真正的手机
            Phone *phone = [[Phone alloc] init];
            phone.name = @"iphone 6";
            phone.price = 5288;
            
            // 把手机放到手机货架上
            [_phoneArray addObject:phone];
        
        }
    }
    else if ([name isEqualToString:padName])
    {
        for (int i = 0; i < count; i++) {
            Pad *pad = [[Pad alloc] init];
            pad.name = @"ipad air";
            pad.price = 3288;
            
            // 把平板放到平板的货架上
            [_padArray addObject:pad];
        
        }
    }
    else if ([name isEqualToString:macName])
    {
        for (int i = 0; i < count; i ++) {
            Mac *mac = [[Mac alloc] init];
            mac.name = @"mac Pro";
            mac.price = 9288;
            
            // 把电脑放到电脑货架上
            [_macArray addObject:mac];
        }
    }
}
/**
 *  从货架上面取商品
 */
- (NSMutableArray *)getGoodsWithName:(NSString *)name andCount:(int)count
{
//    if(name isEqualToString:phoneName){
//        if (count > _phoneArray.count) {
//            NSLog(@"网络出错,请重新运行!");
//        }
    
    // 创建1个购物车
    NSMutableArray *shopCar = [NSMutableArray array];
    if ([name isEqualToString:phoneName]) {
        for (int i = 0; i < count; i ++) {
            // 把手机货架商品的手机拿出来放到购物车里面
             [shopCar addObject:_phoneArray[0]];
            
            // 把手机货架上面拿出去的那个商品减掉
            [_phoneArray removeObject:_phoneArray[0]];
        
        }
       // 根据外界输出的名字和商品个数来判断是那件商品
    }else if ([name isEqualToString:padName]){
        for (int i = 0; i < count; i ++) {
            // 把pad从货架上拿下来放到购物车
            [shopCar addObject:_padArray[0]];
            
            [_padArray removeObject:_padArray[0]];
        }
    }else if ([name isEqualToString:macName]){
        for (int i = 0; i < count; i ++) {
            [shopCar addObject:_macArray[0]];
            
            [_macArray removeObject:_macArray[0]];
        }
    }
    
    return shopCar;
}
/**
 *  展示库存
 */
- (void)show
{
    NSLog(@"商品库存如下:手机数量:%ld,电脑数量:%ld,平板数量:%ld",_phoneArray.count,_macArray.count,_padArray.count);
}

// 给手机\电脑]\平板货架进行初始化
- (instancetype)init
{
    // 在本类的初始化方法中,对本类当中的成员变量进行初始化.
    if (self = [super init]) {
        _phoneArray = [NSMutableArray array];
        _padArray = [NSMutableArray array];
        _macArray = [NSMutableArray array];
        
        // 往货架上面添加商品
        [self addGoodsWithName:@"iPhone" andCount:100];
        [self addGoodsWithName:@"iPad" andCount:100];
        [self addGoodsWithName:@"iMac" andCount:100];
    }
    return self;
}
@end













