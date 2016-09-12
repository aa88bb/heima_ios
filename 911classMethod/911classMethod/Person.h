//
//  Person.h
//  911classMethod
//
//  Created by zhuchenglong on 16/9/11.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Person : NSObject{
    @public
    
    Book *_bookName;
    int age;
    
}
-(void)readWithBook:(Book *)book;

@end
