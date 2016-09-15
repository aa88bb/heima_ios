
/**
 
 分析其中需要哪些类:
 1.类:AppleShop
   属性:货架
   方法:欢迎语
 
 2.类:货架类
   属性:手机货架\电脑货架\平板货架
   方法:取商品.添加商品的一个方法
 
 3.类:商品父类
   属性:价格,名称
 
 4.子类:手机,电脑,平板
 
 5.类:打折父类
   方法:根据原价计算打折后的价格---不打折
 
 6.类:子类:打几折\每满300减50
 
 */
#import <Foundation/Foundation.h>
#import "AppleShop.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // 需求,只要有商店存在,里面的货架商品,就都已经存在了.
        AppleShop *shop = [[AppleShop alloc] init];

       
        
        
        [shop sayHi];
    }
    return 0;
}
