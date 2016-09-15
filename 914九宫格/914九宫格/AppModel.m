//
//  AppModel.m
//  914九宫格
//
//  Created by zhuchenglong on 16/9/14.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "AppModel.h"

@implementation AppModel

-(instancetype)initWithDict:(NSDictionary *)dict{
    if(self = [super init]){
        self.name = dict[@"name"];
        self.icon = dict[@"icon"];
    }
    return self;
}



@end
