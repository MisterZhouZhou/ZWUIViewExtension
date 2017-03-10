//
//  UIView+ZWExtension.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "UIView+ZWExtension.h"
#define WeakObj(o) autoreleasepool{} __weak typeof(o) o##Weak = o;
#define StrongObj(o) autoreleasepool{} __strong typeof(o) o = o##Weak;

@implementation UIView (ZWExtension)

#pragma mark - setter
-(void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size   = size;
    self.frame   = frame;
}

-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame   = frame;
}

-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame   = frame;
}

-(void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame   = frame;
}

-(void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame   = frame;
}

- (void)setMaxX:(CGFloat)maxX{
    CGRect frame = self.frame;
    frame.origin.x = maxX - self.width;
    self.frame   = frame;
}

- (void)setMaxY:(CGFloat)maxY{
    CGRect frame = self.frame;
    frame.origin.y = maxY - self.height;
    self.frame   = frame;
}

-(void)setCenterX:(CGFloat)centerX
{
    self.center = CGPointMake(centerX, self.center.y);
}

-(void)setCenterY:(CGFloat)centerY
{
    self.center = CGPointMake(self.center.x,centerY);
}


#pragma mark - getter
-(CGSize)size
{
    return self.frame.size;
}

-(CGFloat)width{
   
    return  self.frame.size.width;
}

-(CGFloat)height
{
    return  self.frame.size.height;
}

-(CGFloat)x
{
    return  self.frame.origin.x;
}

-(CGFloat)y
{
    return  self.frame.origin.y;
}

-(CGFloat)maxX
{
    return self.frame.origin.x + self.frame.size.width;
}


-(CGFloat)maxY
{
    return self.frame.origin.y + self.frame.size.height;
}

-(CGFloat)centerX{
    return self.center.x;
}

-(CGFloat)centerY{
    return self.center.y;
}

#pragma mark - equalToView
-(EqualToView)centerxEqualToView{
    @WeakObj(self);
    return ^(UIView *view){
        @StrongObj(self);
        //如果是子父关系
        if ([self.superview isKindOfClass:[view class]]) {
          self.center = CGPointMake(view.center.x - view.x, self.center.y);
        }else{
             self.center = CGPointMake(view.center.x, self.center.y);
        }
    };
}

-(EqualToView)centeryEqualToView{
    @WeakObj(self);
    return ^(UIView *view){
        @StrongObj(self);
        //如果是子父关系
         if ([self.superview isKindOfClass:[view class]]) {
             self.center = CGPointMake(self.center.x, view.center.y - view.y);
         }else{
              self.center = CGPointMake(self.center.x, view.center.y);
         }
    };
}

-(EqualToView)centerEqualToView{
    @WeakObj(self);
    return ^(UIView *view){
        @StrongObj(self);
        //如果是子父关系
        if ([self.superview isKindOfClass:[view class]]) {
            self.center = CGPointMake(view.center.x - view.x , view.center.y - view.y);
        }
        else{
            self.center = view.center;
        }
    };
}

-(EqualToView)leftEqualToView{
    @WeakObj(self);
    return ^(UIView *view){
        @StrongObj(self);
        //如果是子父关系
        if ([self.superview isKindOfClass:[view class]]) {
            self.center = CGPointMake(view.center.x - view.x,self.center.y);
            self.x =  self.centerX - view.width/2;
        }else{
            self.x = view.x;
        }
    };
}

-(EqualToView)rightEqualToView{
    @WeakObj(self);
    return ^(UIView *view){
        @StrongObj(self);
        //如果是子父关系
        if ([self.superview isKindOfClass:[view class]]) {
            self.center = CGPointMake(view.center.x - view.x,self.center.y);
            self.maxX =  self.centerX + view.width/2;
        }else{
             self.maxX = view.maxX;
        }
    };
}

-(EqualToView)topEqualToView{
    @WeakObj(self);
    return ^(UIView *view){
        @StrongObj(self);
        //如果是子父关系
        if ([self.superview isKindOfClass:[view class]]) {
            self.center = CGPointMake(self.center.x,view.center.y - view.y);
            self.y =  self.centerY - view.height/2;
        }else{
             self.y = view.y;
        }
    };
}


-(EqualToView)bottomEqualToView{
    @WeakObj(self);
    return ^(UIView *view){
        @StrongObj(self);
        //如果是子父关系
        if ([self.superview isKindOfClass:[view class]]) {
            self.center = CGPointMake(self.center.x,view.center.y - view.y);
            self.maxY =  self.centerY + view.height/2;
        }else{
            self.maxY = view.maxY;
        }
    };
}

@end
