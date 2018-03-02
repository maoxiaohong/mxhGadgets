//
//  AdaptiveLayoutHelper.h
//  DHOTT
//
//  Copyright (c) 2015 Huawei Software Technologies Co., Ltd. All rights
//  reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define PX(pixel) (PointFromPixel(pixel))
#define BU(unit) (PointFromUnit(unit))

#define UI_SCREEN_W ([AdaptiveLayoutHelper sizeOfCurrentApplicationWindow].width)
#define UI_SCREEN_H ([AdaptiveLayoutHelper sizeOfCurrentApplicationWindow].height)

#define UI_SCREEN_MIN_WIDTH  (IPAD_LANDSCAPE ? UI_SCREEN_W : MIN(UI_SCREEN_W, UI_SCREEN_H))

#define DEVICE_IS_IPHONE ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone)
#define DEVICE_IS_IPAD ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad)

#define LAYOUT_IS_IPHONE ([AdaptiveLayoutHelper iPhone])
#define LAYOUT_IS_IPAD ([AdaptiveLayoutHelper iPad])

#define LAYOUT_IS_7SCREEN(size) (size.width < 800 && size.width > 600)

#define LAYOUT_IS_5SCREEN(size) (size.width <= 512 )

#define IPHONE_PORTRAIT ([AdaptiveLayoutHelper iPhonePortrait])
#define IPHONE_LANDSCAPE ([AdaptiveLayoutHelper iPhoneLandscape])
#define IPAD_LANDSCAPE ([AdaptiveLayoutHelper iPadLandscape])
#define IPAD_PORTRAIT (IPAD_LANDSCAPE)


#pragma mark - public function

/**
 convert unit of length from Building Unit to Points

 @param buildingUnit a kind of unit of length, which stands for 24px
 @return length in points
 */
extern CGFloat PointFromUnit(CGFloat buildingUnit);

/**
 convert unit of length from Building Unit to Points

 @param pixel a kind of unit of length
 @return length in points
 */
extern CGFloat PointFromPixel(CGFloat pixel);

/**
 change rec lenth

 @param rect a cgrect
 @return point rect
 */
extern CGRect PointFromRect(CGRect rect);

#pragma mark - AdaptiveLayoutHelper

/**
 help to build adaptive layout
 */
@interface AdaptiveLayoutHelper : NSObject

/**
 current application window

 @return window
 */
+ (UIWindow *)applicationWindow;

/**
 size of current application window

 @return window size
 */
+ (CGSize)sizeOfCurrentApplicationWindow;

/**
 the trait collection of this application

 @return trait
 */
+ (UITraitCollection *)traitCollection;

/**
 is current trait collection wR hR

 @return is ipad landscape
 */
+ (BOOL)iPadLandscape;

/**
 is current trait collection wA hC

 @return is iPhone landscape
 */
+ (BOOL)iPhoneLandscape;

/**
 is current trait collection wC hR

 @return current trait
 */
+ (BOOL)iPhonePortrait;

/**
 is current trait collection iPad

 @return bool value
 */
+ (BOOL)iPad;

/**
 is current trait collection iPhone

 @return bool value
 */
+ (BOOL)iPhone;
NS_ASSUME_NONNULL_END
@end
