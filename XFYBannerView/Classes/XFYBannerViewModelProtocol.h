//
//  XFYBannerViewModelProtocol.h
//  Pods-XFYBannerView_Example
//
//  Created by xufengyuan on 2018/9/12.
//

@protocol XFYBannerViewModelProtocol <NSObject>

/**
 *  广告图片URL
 */
@property (nonatomic,strong) NSURL *bannerImgURL;


/**
 *  点击执行的代码块
 */
@property (nonatomic, copy) void(^clickBlock)(void);

@end

