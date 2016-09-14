//
//  ViewController.m
//  914九宫格
//
//  Created by zhuchenglong on 16/9/14.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)NSArray *dataArray;
@end

@implementation ViewController

//lan jiazai
-(NSArray *)dataArray{
    if(_dataArray == nil){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
        _dataArray = [NSArray arrayWithContentsOfFile:path];
    }
    return _dataArray;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    int column = 3;
    CGFloat imageViewY = 5;
    CGFloat imageViewWidth = 45;
    CGFloat yellowViewWidth = 80;
    CGFloat yellowViewHeight = 95;
    CGFloat margin = (self.view.frame.size.width - column * yellowViewWidth )/(column+1);

    

    for(int j=0;j<4;j++){
        for(int i = 0; i<column;i++){
            CGFloat yellowViewX = (i+1)*margin +i*yellowViewWidth;
            CGFloat yellowViewY = (j+1)*margin +j*yellowViewHeight;
            UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(yellowViewX, yellowViewY, yellowViewWidth, yellowViewHeight)];
            
            [yellowView setBackgroundColor:[UIColor yellowColor]];
            
            [self.view addSubview:yellowView];
            
            //add subview

            CGFloat imageViewX = (yellowViewWidth - imageViewWidth)/2;
            
            UIImageView *iconImaageView = [[UIImageView alloc] initWithFrame:CGRectMake(imageViewX, imageViewY, imageViewWidth, imageViewWidth)];
            [iconImaageView setBackgroundColor:[UIColor redColor]];
            
            [yellowView addSubview:iconImaageView];
            
            //add label
            CGFloat labelY = CGRectGetMaxY(iconImaageView.frame) +2;
            UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, labelY, yellowViewWidth, 15)];
            nameLabel.text = @"爸爸去哪儿";
            nameLabel.textAlignment = NSTextAlignmentCenter;
            nameLabel.font = [UIFont systemFontOfSize:15];
            [yellowView addSubview:nameLabel];
            
            //add button
            CGFloat buttonWidth = imageViewWidth +10;
            CGFloat buttonHeight = 20;
            CGFloat buttonX = (yellowViewWidth - buttonWidth)/2;
            CGFloat buttonY = CGRectGetMaxY(nameLabel.frame)+2;
            UIButton *downloadButton = [[UIButton alloc] initWithFrame:CGRectMake(buttonX, buttonY, buttonWidth, buttonHeight)];
            
            [downloadButton setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
            [downloadButton setBackgroundImage:[UIImage imageNamed:@"buttongreen_highlighted"] forState:UIControlStateHighlighted];
            [downloadButton setTitle:@"下载" forState:UIControlStateNormal];
            downloadButton.titleLabel.font = [UIFont systemFontOfSize:15];
            [yellowView addSubview:downloadButton];
            
        
        }
        
    }
    

    
}



@end
