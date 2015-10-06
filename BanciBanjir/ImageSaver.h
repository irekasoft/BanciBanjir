//  ImageSaver.h
//  Magical_Record
//  Copyright (c) 2013 Ray Wenderlich. All rights reserved.

#import <UIKit/UIKit.h>

@interface ImageSaver : NSObject

+ (NSString *)saveImageToDiskDocument:(UIImage*)image filename:(NSString *)filename;

+ (NSString *)saveImageToDisk:(UIImage*)image;
+ (void)deleteImageAtPath:(NSString*)path;
+ (NSString *)groupPath;

+ (NSString *)documentPath;

+ (NSString *)saveImageToDisk:(UIImage*)image ext:(NSString *)extName;

@end
