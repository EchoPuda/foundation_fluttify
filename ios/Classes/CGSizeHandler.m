//
//  CGSizeHandler.m
//  foundation_fluttify
//
//  Created by Yohom Bao on 2020/6/22.
//

#import "CGSizeHandler.h"

extern BOOL enableLog;

void CGSizeHandler(NSString* method, id rawArgs, FlutterResult methodResult) {
    if ([@"CGSize::create" isEqualToString:method]) {
        NSDictionary<NSString*, id>* args = (NSDictionary<NSString*, id>*) rawArgs;
        
        CGFloat width = [(NSNumber*) args[@"width"] floatValue];
        CGFloat height = [(NSNumber*) args[@"height"] floatValue];
        
        CGSize rect = CGSizeMake(width, height);
        
        NSValue* result = [NSValue valueWithCGSize:rect];
        
        methodResult(result);
    } else if ([@"CGSize::getWidth" isEqualToString:method]) {
        NSDictionary<NSString*, id>* args = (NSDictionary<NSString*, id>*) rawArgs;

        NSValue *__this__ = (NSValue *) args[@"__this__"];
        
        CGSize cgSize = __this__.CGSizeValue;
        
        methodResult(@(cgSize.width));
    } else if ([@"CGSize::getHeight" isEqualToString:method]) {
        NSDictionary<NSString*, id>* args = (NSDictionary<NSString*, id>*) rawArgs;

        NSValue *__this__ = (NSValue *) args[@"__this__"];
        
        CGSize cgSize = __this__.CGSizeValue;
        
        methodResult(@(cgSize.height));
    } else {
        methodResult(FlutterMethodNotImplemented);
    }
}

