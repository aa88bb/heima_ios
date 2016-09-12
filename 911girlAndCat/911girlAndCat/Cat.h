//
//  Cat.h
//  911girlAndCat
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

enum color{
    black,
    white,
    yellow
};

@interface Cat : NSObject{
    @public
    float _weight;
    enum color hairColor;
    
    
}

-(void)jump;

-(void)eat;

@end
