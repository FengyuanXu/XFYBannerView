//
//  XFYBannerView.h
//  Pods-XFYBannerView_Example
//
//  Created by xufengyuan on 2018/9/12.
//

#import <UIKit/UIKit.h>
#import "XFYBannerViewModelProtocol.h"
typedef void(^LoadImageBlock)(UIImageView *imageView, NSURL *url);

@protocol XFYBannerViewDelegate <NSObject>

- (void)bannerViewDidSelectedPicModel: (id <XFYBannerViewDelegate>)bannerViewModel;

@end

@interface XFYBannerView : UIView
+ (instancetype)picViewWithLoadImageBlock: (LoadImageBlock)loadBlock;
/**
 *  用于加载图片的代码块, 必须赋值
 */
@property (nonatomic, copy) LoadImageBlock loadBlock;

/**
 *  用于告知外界, 当前滚动到的是哪个广告数据模型
 */
@property (nonatomic, strong) id<XFYBannerViewDelegate> delegate;

/**
 *  用来展示图片的数据源
 */
@property (nonatomic, strong) NSArray <id <XFYBannerViewModelProtocol>>*picModels;
@end

