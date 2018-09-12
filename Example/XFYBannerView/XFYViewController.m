//
//  XFYViewController.m
//  XFYBannerView
//
//  Created by xufengyuan@vip.qq.com on 09/12/2018.
//  Copyright (c) 2018 xufengyuan@vip.qq.com. All rights reserved.
//

#import "XFYViewController.h"
#import "XFYBannerView.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "XFYBannerViewModel.h"
@interface XFYViewController ()
@property (nonatomic,strong) NSMutableArray<XFYBannerViewModel *> *testDataArray;//测试数据
@end

@implementation XFYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //使用示例
    //1.初始化视图，并传入图片加载方式（示例中是使用SDWebImage，可替换为其他开源框架）
    XFYBannerView *bannerView = [XFYBannerView picViewWithLoadImageBlock:^(UIImageView *imageView, NSURL *url) {
        [imageView sd_setImageWithURL:url];
    }];
    
    bannerView.frame = CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 150);
    
    //测试数据
    XFYBannerViewModel *model1 = [[XFYBannerViewModel alloc] init];
    model1.bannerImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group36/M07/27/2D/wKgJTVpCItDA9iSGAAFoEwpEI48032_ios_large.png"];
    
    XFYBannerViewModel *model2 = [[XFYBannerViewModel alloc] init];
    model2.bannerImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group37/M06/A6/D3/wKgJoVpCJv7TPJkGAAlidYc_ZKI798_ios_large.png"];
    
    XFYBannerViewModel *model3 = [[XFYBannerViewModel alloc] init];
    model3.bannerImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group33/M0A/0D/B4/wKgJnVmWYdDCA4BEAAKCqs-DRzQ574_ios_large.jpg"];
    
    XFYBannerViewModel *model4 = [[XFYBannerViewModel alloc] init];
    model4.bannerImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group33/M0B/0D/EB/wKgJTFmWYhGAZ-r2AALtEuhyjq4607_ios_large.jpg"];
    
    [self.testDataArray addObject:model1];
    [self.testDataArray addObject:model2];
    [self.testDataArray addObject:model3];
    [self.testDataArray addObject:model4];
    
    bannerView.picModels = self.testDataArray;
    
    [self.view addSubview:bannerView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSMutableArray<XFYBannerViewModel *> *)testDataArray {
    if (!_testDataArray) {
        _testDataArray = [NSMutableArray array];
        
    }
    return _testDataArray;
}
@end
