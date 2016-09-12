//
//  Girl.m
//  911girlAndCat
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "Girl.h"

@implementation Girl

-(void)feedWithCat:(Cat *)cat{
    NSLog(@"wei mao le");
    [cat eat];
}

-(void)playWithCat:(Cat *)cat{
    NSLog(@"wan mao le");
    [cat jump];
}

-(void)show{
    NSLog(@"nvhai name:%@, birthday:%d %d %d  xingbie:%d ",_name,_birth.year,_birth.month,_birth.day,_gender);
}

@end
