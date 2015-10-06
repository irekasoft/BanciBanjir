//
//  Event+CoreDataProperties.h
//  BanciBanjir
//
//  Created by Hijazi on 4/10/15.
//  Copyright © 2015 iReka Soft. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Event.h"

NS_ASSUME_NONNULL_BEGIN

@interface Event (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *timeStamp;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *latitude;
@property (nullable, nonatomic, retain) NSNumber *longitude;
@property (nullable, nonatomic, retain) NSString *gambarRumah;
@property (nullable, nonatomic, retain) NSString *gambarAhliKeluarga;
@property (nullable, nonatomic, retain) NSString *gambarIC;
@property (nullable, nonatomic, retain) NSString *gambarUbatan;
@property (nullable, nonatomic, retain) NSString *namaTuanRumah;
@property (nullable, nonatomic, retain) NSString *tel;
@property (nullable, nonatomic, retain) NSString *hakMilik;
@property (nullable, nonatomic, retain) NSString *stat_ayah;
@property (nullable, nonatomic, retain) NSString *stat_ibu;
@property (nullable, nonatomic, retain) NSString *stat_ahli01;
@property (nullable, nonatomic, retain) NSString *stat_ahli02;
@property (nullable, nonatomic, retain) NSString *stat_ahli03;
@property (nullable, nonatomic, retain) NSString *stat_ahli04;
@property (nullable, nonatomic, retain) NSString *stat_ahli05;
@property (nullable, nonatomic, retain) NSString *lokasiTempatBerkumpulAtasBukit;
@property (nullable, nonatomic, retain) NSString *status_perluBantuan;
@property (nullable, nonatomic, retain) NSString *status_priority;
@property (nullable, nonatomic, retain) NSString *kebolehan;
@property (nullable, nonatomic, retain) NSString *noPanggilanRadioTempatan;
@property (nullable, nonatomic, retain) NSString *noHPKetuaKampung;

@end

NS_ASSUME_NONNULL_END
