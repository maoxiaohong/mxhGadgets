//
//  AdaptiveLayoutHelper.m
//  DHOTT
//
//  Copyright (c) 2015 Huawei Software Technologies Co., Ltd. All rights reserved.
//

#import "AdaptiveLayoutHelper.h"

static const CGFloat PixelsPerBuildingUnit = 24;
static const CGFloat PointsPerPixel = 0.5;
// static const CGFloat ReferencePhoneWidth = 640;
// static const CGFloat ReferencePadWidth = 2048;

#pragma mark - public function

CGFloat PointFromPixel(CGFloat pixel)
{
    return pixel * PointsPerPixel;
}

CGFloat PointFromUnit(CGFloat buildingUnit)
{
    return buildingUnit * PixelsPerBuildingUnit * PointsPerPixel;
}

CGRect PointFromRect(CGRect rect)
{
    CGRect rectNew;
    rectNew.origin.x = PointFromPixel(rect.origin.x * 2);
    rectNew.origin.y = PointFromPixel(rect.origin.y * 2);
    rectNew.size.width = PointFromPixel(rect.size.width * 2);
    rectNew.size.height = PointFromPixel(rect.size.height * 2);
    return rectNew;
}

#pragma mark - AdaptiveLayoutHelper

@implementation AdaptiveLayoutHelper

+ (UIWindow *)applicationWindow
{
    return ((UIWindow *)[UIApplication sharedApplication].windows.firstObject);
}

+ (CGSize)sizeOfCurrentApplicationWindow
{
    return [self applicationWindow].frame.size;
}

+ (UITraitCollection *)traitCollection
{
    return ((UIWindow *)[UIApplication sharedApplication].windows.firstObject).traitCollection;
}

+ (BOOL)iPadLandscape
{
    return [self traitCollection].horizontalSizeClass == UIUserInterfaceSizeClassRegular &&
           [self traitCollection].verticalSizeClass == UIUserInterfaceSizeClassRegular;
}

+ (BOOL)iPhoneLandscape
{
    return [self traitCollection].verticalSizeClass == UIUserInterfaceSizeClassCompact;
}

+ (BOOL)iPhonePortrait
{
    return [self traitCollection].horizontalSizeClass == UIUserInterfaceSizeClassCompact &&
           [self traitCollection].verticalSizeClass == UIUserInterfaceSizeClassRegular;
}

+ (BOOL)iPad
{
    return [self iPadLandscape];
}

+ (BOOL)iPhone
{
    return [self iPhonePortrait] || [self iPhoneLandscape];
}

@end
