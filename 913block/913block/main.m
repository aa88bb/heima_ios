//
//  main.m
//  913block
//
//  Created by zhuchenglong on 16/9/13.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

void test(){
    NSLog(@"hello");
}

//block声明
//void (^myBlock)();
void (^myBlock)() = ^{
    NSLog(@"nihao");
};

void (^sumFunc)(int,int) = ^(int a,int b){
    NSLog(@"he shi: %d",a+b);
};


int (^sum3)(int ,int) = ^(int a,int b){
    return a+b;
};



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        test();
        myBlock();
        
        sumFunc(8,9);
        NSLog(@"%d",sum3(2,4));
    }
    return 0;
}
