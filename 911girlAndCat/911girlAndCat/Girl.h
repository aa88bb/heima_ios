//
//  Girl.h
//  911girlAndCat
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"

struct birthday {
    int year;
    int month;
    int day;
};

@interface Girl : NSObject{
    @public
    NSString *_name;
    struct birthday _birth;
    BOOL _gender;
    Cat *_cat;
}

-(void)feedWithCat:(Cat *)cat;

-(void)playWithCat:(Cat *)cat;

-(void)show;

@end
