//  ImageSaver.m
//  Magical_Record
//  Copyright (c) 2013 Ray Wenderlich. All rights reserved.

#import "ImageSaver.h"

@implementation ImageSaver


+ (NSString *)saveImageToDiskDocument:(UIImage*)image filename:(NSString *)filename{
    
    NSData *imgData   = UIImageJPEGRepresentation(image, 0.5);
    
    NSString *jpgFilename = [NSString stringWithFormat:@"%@", filename];
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = documentPaths[0];
    NSString *filePath = [documentsDir stringByAppendingPathComponent:jpgFilename];
    
    if ([imgData writeToFile:filePath atomically:YES]) {
        
    } else {
        [[[UIAlertView alloc] initWithTitle:@"Error"
                                    message:@"There was an error saving your photo. Try again."
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil] show];
        return nil;
    }
    return jpgFilename;
}

+ (NSString *)saveImageToDisk:(UIImage*)image{

	NSData *imgData   = UIImageJPEGRepresentation(image, 0.5);
	NSString *name    = [NSString stringWithFormat:@"%f",[NSDate timeIntervalSinceReferenceDate]];
    
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = documentPaths[0];
    
    NSString *jpgFilename = [NSString stringWithFormat:@"%@.jpg", name];
	NSString *jpgPath = [documentsDir stringByAppendingPathComponent:jpgFilename];
    
	if ([imgData writeToFile:jpgPath atomically:YES]) {
		
	} else {
		[[[UIAlertView alloc] initWithTitle:@"Error"
									message:@"There was an error saving your photo. Try again."
								   delegate:nil
						  cancelButtonTitle:@"OK"
						  otherButtonTitles: nil] show];
		return nil;
	}
	return jpgFilename;
}


+ (NSString *)saveImageToDisk:(UIImage*)image ext:(NSString *)extName{
  
  NSData *imgData   = UIImageJPEGRepresentation(image, 0.5);
  NSString *name    = [NSString stringWithFormat:@"%f",[NSDate timeIntervalSinceReferenceDate]];
  
  NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  NSString *documentsDir = documentPaths[0];
  
  NSString *jpgFilename = [NSString stringWithFormat:@"%@-%@.jpg", name,extName];
  NSString *jpgPath = [documentsDir stringByAppendingPathComponent:jpgFilename];
  
  if ([imgData writeToFile:jpgPath atomically:YES]) {
    
  } else {
    [[[UIAlertView alloc] initWithTitle:@"Error"
                                message:@"There was an error saving your photo. Try again."
                               delegate:nil
                      cancelButtonTitle:@"OK"
                      otherButtonTitles: nil] show];
    return nil;
  }
  return jpgFilename;
}

+ (NSString *)documentPath{

    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = documentPaths[0];
    return documentsDir;
    
}

+ (NSString *)groupPath{

    return [[NSFileManager defaultManager]
     containerURLForSecurityApplicationGroupIdentifier:
     @"group.com.irekasoft.facelapse"].path;

}

+ (void)deleteImageAtPath:(NSString *)path {
	NSError *error;
	NSString *imgToRemove = [[ImageSaver groupPath] stringByAppendingPathComponent:path];
	[[NSFileManager defaultManager] removeItemAtPath:imgToRemove error:&error];
}

@end
