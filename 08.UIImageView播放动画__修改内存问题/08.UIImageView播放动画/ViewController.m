//一.UIImageView
/*
    1.可以用来展示单张图片
    2.也可以用来播放动画
    3.播放动画的方法
     - (void)startAnimating;
     - (void)stopAnimating;
     - (BOOL)isAnimating;
    4.用来存放动画图片的属性
    @property(nonatomic,copy) NSArray *animationImages;
    5.
    @property(nonatomic) NSTimeInterval animationDuration;   //持续时间@property(nonatomic) NSInteger  animationRepeatCount //播放次数
 */
//二.IOS开发中内存的处理细节
/*
    1.开发IOS项目,如果APP占用内存过大,IOS系统会发送一个警告给应用程序
    2.程序员可以在警告中,释放内存
    3.如果发送了警告以后,APP的内存占用没有任何的改变,那么会---闪退
 */
//三.UIimage加载图片的几种方式
/*
    1.UIimage imageName:图片名  使用这种方式加载的图片 会在内存中常驻
    一般,按钮的背景图,小箭头 icon 等等 UI界面上的小元素 使用这种方式
    对于需要释放的图片 使用另外的方式
    2.UIImage imageWithContentsOfFile:路径名
    使用这种方式加载的图片,只有当没有任何一个对象对他进行强引用的时候,才会释放
    3.项目中
        播放第一个动画的时候,UIimageView的图片属性 对加载到内存中的图片强引用了
        播放第二个动画,第一组图片被释放了,第二组图片被强引用
 */
//四.延迟调用方法
/*
 可以延迟具体的时间调用某一个方法
  [self performSelector:@selector(cleanImage) withObject:nil afterDelay:2*50*0.08];
 */

#import "ViewController.h"

@interface ViewController ()
//1.播放动画的;
@property (weak, nonatomic) IBOutlet UIImageView *animationImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//1.点击播放爸爸带小孩动画
- (IBAction)fatherWithChild:(UIButton *)sender {
    if ([self.animationImageView isAnimating])return;
    //1.加载图片
    NSMutableArray *mutArr=[NSMutableArray array];
    for (int i=1; i<=40; i++) {
        //1.1拼接图片的名字
        NSString *imageName =[NSString stringWithFormat:@"gun%03d.png",i];
#warning 新的东西,使用Bundle的方式加载图片,这里修改了图片的放置位置
        //1.2加载图片
        NSBundle *mainBundle=[NSBundle mainBundle];
        NSString *imagePath=[mainBundle pathForResource:imageName ofType:nil];
        UIImage *image=[UIImage imageWithContentsOfFile:imagePath];
        //1.3放到一个数组中
        [mutArr addObject:image];
    }
    
    //2.把加载好的图片设置给UIImageView
    self.animationImageView.animationImages=mutArr;
    
#warning 设置动画细节必须在播放之前
    //4.设置动画的一些细节
    self.animationImageView.animationDuration=2;
    self.animationImageView.animationRepeatCount=2;
    
    //3.开始播放动画
    [self.animationImageView startAnimating];
    }

//2.点击播放三只小狗动画
- (IBAction)threeLittleDog:(UIButton *)sender {
    if ([self.animationImageView isAnimating])return;
    //1.加载图片
    NSMutableArray *mutArr=[NSMutableArray array];
    for (int i=1; i<=40; i++) {
        //1.1拼接图片的名字
        NSString *imageName =[NSString stringWithFormat:@"water%03d.png",i];
#warning 使用Bundle的方式加载图片 这种方式会被释放
        NSBundle *mainBundle=[NSBundle mainBundle];
        NSString *imagePath=[mainBundle pathForResource:imageName ofType:nil];
        UIImage *image=[UIImage imageWithContentsOfFile:imagePath];
        //1.3放到一个数组中
        [mutArr addObject:image];
    }
    
    //2.把加载好的图片设置给UIImageView
    self.animationImageView.animationImages=mutArr;
    
#warning 设置动画细节必须在播放之前
    //4.设置动画的一些细节
    self.animationImageView.animationDuration=50*0.08;
    self.animationImageView.animationRepeatCount=2;
    
    //3.开始播放动画
    [self.animationImageView startAnimating];
    //4.动画播放完毕以后再去释放图片
#warning 下面的这个方法记住用法即可 
    [self performSelector:@selector(cleanImage) withObject:nil afterDelay:2*50*0.08];
}

//释放图片内存
-(void)cleanImage{
    self.animationImageView.animationImages=nil;
}

//抽取播放动画的代码
-(void)playAnimationWithName:(NSString *)name andNum:(int)num{
    if ([self.animationImageView isAnimating])return;
    //1.加载图片
    NSMutableArray *mutArr=[NSMutableArray array];
    for (int i=1; i<=num; i++) {
        //1.1拼接图片的名字
        NSString *imageName =[NSString stringWithFormat:@"%@%03d",name,i];
        //1.2加载图片
        UIImage *image=[UIImage imageNamed:imageName];
        //1.3放到一个数组中
        [mutArr addObject:image];
    }
    
    //2.把加载好的图片设置给UIImageView
    self.animationImageView.animationImages=mutArr;
    
#warning 设置动画细节必须在播放之前
    //4.设置动画的一些细节
    self.animationImageView.animationDuration=2;
    self.animationImageView.animationRepeatCount=2;
    
    //3.开始播放动画
    [self.animationImageView startAnimating];

}







@end
