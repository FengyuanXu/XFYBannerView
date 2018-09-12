//
//  XFYBannerViewModel.h
//  XFYBannerView_Example
//
//  Created by xufengyuan on 2018/9/12.
//  Copyright © 2018年 xufengyuan@vip.qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XFYBannerViewModelProtocol.h"
@interface XFYBannerViewModel : NSObject<XFYBannerViewModelProtocol>

/**
 *  广告图片URL
 */
@property (nonatomic,strong) NSURL *bannerImgURL;


/**
 *  点击执行的代码块
 */
@property (nonatomic, copy) void(^clickBlock)(void);
@end
