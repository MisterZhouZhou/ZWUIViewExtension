//
//  UIView+ZWExtension.h
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  操作顺序，添加视图 再进行 布局
 */

typedef void(^EqualToView)(UIView *view);

@interface UIView (ZWExtension)

/** size */
@property(nonatomic,assign) CGSize size;
/** width */
@property(nonatomic,assign) CGFloat width;
/** height */
@property(nonatomic,assign) CGFloat height;
/** x  */
@property(nonatomic,assign) CGFloat x;
/** y */
@property(nonatomic,assign) CGFloat y;

/** x + width */
@property(nonatomic,assign) CGFloat maxX;
/** y + height */
@property(nonatomic,assign) CGFloat maxY;
/** centerX */
@property(nonatomic,assign) CGFloat centerX;
/** centerY */
@property(nonatomic,assign) CGFloat centerY;

/** centerX equal to View‘s centerX 
 *  centerxEqualToView(superview/view)
 */
-(EqualToView)centerxEqualToView;

/** centerY equal to View‘s centerY
 *  centeryEqualToView(superview/view)
 */
-(EqualToView)centeryEqualToView;

/** center equal to View‘s center
 *  centerEqualToView(superview/view)
 */
-(EqualToView)centerEqualToView;

/** left equal to View‘s left
 *  leftEqualToView(superview/view)
 */
-(EqualToView)leftEqualToView;

/** right equal to View‘s right
 *  rightEqualToView(superview/view)
 */
-(EqualToView)rightEqualToView;

/** top equal to View‘s top
 *  topEqualToView(superview/view)
 */
-(EqualToView)topEqualToView;

/** bottom equal to View‘s bottom
 *  bottomEqualToView(superview/view)
 */
-(EqualToView)bottomEqualToView;

/* 在分类中声明@property，只会生成方法的声明，不会生成方法的实现和带有下划线的成员变量*/
@end
