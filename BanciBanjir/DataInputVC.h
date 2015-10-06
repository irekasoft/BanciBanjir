//
//  DataInputVCViewController.h
//  BanciBanjir
//
//  Created by Hijazi on 4/10/15.
//  Copyright © 2015 iReka Soft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

#import "Event.h"
#import "ImageSaver.h"

@import CoreLocation;

@interface DataInputVC : UIViewController <WKNavigationDelegate, WKScriptMessageHandler, CLLocationManagerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
  
  int cameraForInt;
  
  CLLocationManager *manager;
  
  BOOL isLoad;
    BOOL didAppear;
  
  WKWebViewConfiguration *configuration;
  
  NSDate *timeStamp;
  NSString *name;
  NSNumber *latitude;
  NSNumber *longitude;
  NSString *gambarRumah;
  NSString *gambarAhliKeluarga;
  NSString *gambarIC;
  NSString *gambarUbatan;
  NSString *namaTuanRumah;
  NSString *tel;
  NSString *hakMilik;
  NSString *stat_ayah;
  NSString *stat_ibu;
  NSString *stat_ahli01;
  NSString *stat_ahli02;
  NSString *stat_ahli03;
  NSString *stat_ahli04;
  NSString *stat_ahli05;
  NSString *lokasiTempatBerkumpulAtasBukit;
  NSString *status_perluBantuan;
  NSString *status_priority;
  NSString *kebolehan;
  NSString *noPanggilanRadioTempatan;
  NSString *noHPKetuaKampung;
  
}

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (weak, nonatomic) IBOutlet UILabel *lbl_location;

@property (weak, nonatomic) IBOutlet UIView *view_ref;

@property (strong, nonatomic) WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIImageView *img_rumah;
@property (weak, nonatomic) IBOutlet UIImageView *img_ic;
@property (weak, nonatomic) IBOutlet UIImageView *img_ubatan;
@property (weak, nonatomic) IBOutlet UIImageView *img_gambarAhliKeluarga;

@end
