//四.懒加载
/*
 1.用到的时候再去加载
 2.没有值的时候才需要初始化
 */

#import "ViewController.h"

@interface ViewController ()

@property (assign,nonatomic) int index;

@property(strong,nonatomic) NSArray *pictures;

@property (weak, nonatomic) IBOutlet UILabel *indexLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *lastButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.index =1;
    [self changeImage];
    
}

//懒加载
-(NSArray *)pictures{
    if(_pictures == nil){
        NSBundle *mainBundle = [NSBundle mainBundle];
        NSString *path = [mainBundle pathForResource:@"images.plist" ofType:nil];
        _pictures = [NSArray arrayWithContentsOfFile:path];
    }
    return _pictures;
}


- (IBAction)lastPicture:(UIButton *)sender {
    self.index--;
    [self changeImage];
}

- (IBAction)nextPicture:(UIButton *)sender {
    self.index++;
    [self changeImage];
}



-(void)changeImage{
    NSDictionary *dict = self.pictures[self.index-1];
    
    self.indexLabel.text = [NSString stringWithFormat:@"%d/%lu",self.index,self.pictures.count];
    self.infoLabel.text = dict[@"desc"];
    self.imageView.image = [UIImage imageNamed:dict[@"icon"]];
                            
    self.lastButton.enabled = (self.index == 1)?NO:YES;
    
    self.nextButton.enabled = (self.index == self.pictures.count)?NO:YES;
}



@end
