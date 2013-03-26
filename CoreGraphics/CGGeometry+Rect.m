//
//  CGGeometry+Rect.m
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import "CGGeometry+Rect.h"

CGRect CGRectWithSize(CGSize size)
{
	return CGRectMake(0, 0, size.width, size.height);
}

CGRect CGRectSizeMake(CGFloat width, CGFloat height)
{
    return CGRectWithSize(CGSizeMake(width, height));
}

CGRect CGRectPointMake(CGFloat x, CGFloat y)
{
    return CGRectMake(x, y, 0, 0);
}

CGRect CGRectInvert(CGRect containingRect, CGRect rect)
{
	return CGRectMake(CGRectGetMinX(rect), CGRectGetHeight(containingRect) - CGRectGetMaxY(rect),
                      CGRectGetWidth(rect), CGRectGetHeight(rect));
}