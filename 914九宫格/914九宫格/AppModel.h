//
//  AppModel.h
//  914九宫格
//
//  Created by zhuchenglong on 16/9/14.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppModel : NSObject

@property (nonatomic,copy) NSString *name;

@property (nonatomic,copy) NSString *icon;

-(instancetype)initWithDict:(NSDictionary *)dict;

@end
