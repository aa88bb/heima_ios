//
//  AppleShop.m
//  06-苹果店购物
//
//  Created by apple on 15/10/21.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "AppleShop.h"
#import "Goods.h"
#import "DZFather.h"
#import "DisCount.h"
#import "MN.h"

@implementation AppleShop
/**
 *  欢迎语
 */
- (void)sayHi
{
    NSLog(@"欢迎光临苹果店!");
    NSLog(@"我们有如下商品可供选择:iPhone,iPad,iMac");
    [_shelf show];
    NSLog(@"请输入您的选择:");
    
    char name[100];
    scanf("%s",name);
    
    NSLog(@"请输入您所需要商品的数量:");
    int count;
    scanf("%d",&count);

    // 把C语言字符串转唤为OC字符串
    NSString *name1 = [NSString stringWithUTF8String:name];

    // 根据用户输入的商品名称和商品数量,获取具体的商品购物车
    NSMutableArray *temp = [_shelf getGoodsWithName:name1 andCount:count];
    
    // 计算价格
    float money = [self getMoneyWithTemp:temp];
    
    NSLog(@"您所购商品的总价:%.2f",money);
    
    // 计算打折
    NSLog(@"我们有如下打折信息可供选择:1.不打折,2.打8折,3.每买300-50");
    int num;
    scanf("%d",&num);
    
    float realMoney = [self getReallyMoney:money andNum:num];
    NSLog(@"打折后的总价是:%.2f",realMoney);
    

    NSLog(@"确认够买吗?1.确认,2.取消,3.退出");
    int num1;
    scanf("%d",&num1);
    if (num1 == 1)
    {
        NSLog(@"您所选择的商品名是:%@,商品数量是:%d,商品总价是:%.2f,商品的折扣价是:%.2f",name1,count,money,realMoney);
    }
    else if (num1 == 2)
    {
        // 把删除掉的商品重新加回去
        [_shelf addGoodsWithName:name1 andCount:count];
        [self sayHi];
    }
    else
    {
        NSLog(@"( ^_^ )/~~拜拜");
        // 把删除掉的商品重写加回去
        [_shelf addGoodsWithName:name1 andCount:count];
    }
    
    // 展示商品库存
    [_shelf show];
    
}
// 打折的方法
- (float)getReallyMoney:(float)money andNum:(int)num
{
    if (num == 1)
    {
        DZFather *dz = [[DZFather alloc] init];
        return [dz getDzMoney:money];
    }
    else if (num == 2)
    {
        DisCount *dis = [[DisCount alloc] init];
        dis.rate = 0.8;
        return [dis getDzMoney:money];
        
    }
    else if (num == 3)
    {
        MN *mn = [[MN alloc] init];
        mn.m = 300;
        mn.n = 50;
        return [mn getDzMoney:money];
    }
    else
    {
        return 0;
    }
}
// 计算价格
- (float)getMoneyWithTemp:(NSMutableArray *)temp
{
    int money = 0;
    for (int i = 0; i < temp.count; i++) {
       
        Goods *good = temp[i];

        // 把每一部手机的价格相加
        money += good.price;
    }
    return money;
}

// 重写构造方法,对货架进行初始化
- (instancetype)init
{
    if (self = [super init]) {
        // 对货架进行初始化
        _shelf = [[Shelf alloc] init];
        
    }
    return self;
}
@end
