//
//  DetailViewController.m
//  BanciBanjir
//
//  Created by Hijazi on 4/10/15.
//  Copyright © 2015 iReka Soft. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
  if (_detailItem != newDetailItem) {
      _detailItem = newDetailItem;
          
      // Update the view.
      [self configureView];
  }
}

- (void)configureView {
  // Update the user interface for the detail item.
  if (self.event) {
    
    self.detailDescriptionLabel.text = [self.event.timeStamp description];
    
    
    self.tv_desc.text = [NSString stringWithFormat:@"name:%@ \nlatitude:%@ \nlongitude:%@ \nhakMilik:%@ \ngambarRumah:%@ \ngambarAhliKeluarga:%@ \ngambarIC:%@ \ngambarUbatan:%@ \nnamaTuanRumah:%@ \ntel:%@ \nhakMilik:%@ \nstat_ayah:%@ \nstat_ibu:%@ \nstat_ahli01:%@ \nstat_ahli02:%@ \nstat_ahli03:%@ \nstat_ahli04:%@ \nstat_ahli05:%@ \nlokasiTempatBerkumpulAtasBukit:%@ \nstatus_perluBantuan:%@ \nstatus_priority:%@ \nkebolehan:%@ \nnoPanggilanRadioTempatan:%@ \nnoHPKetuaKampung:%@",
    self.event.name,
    self.event.latitude,
    self.event.longitude,
    self.event.hakMilik,
    self.event.gambarRumah,
    self.event.gambarAhliKeluarga,
    self.event.gambarIC,
    self.event.gambarUbatan,
    self.event.namaTuanRumah,
    self.event.tel,
    self.event.hakMilik,
    self.event.stat_ayah,
    self.event.stat_ibu,
    self.event.stat_ahli01,
    self.event.stat_ahli02,
    self.event.stat_ahli03,
    self.event.stat_ahli04,
    self.event.stat_ahli05,
    self.event.lokasiTempatBerkumpulAtasBukit,
    self.event.status_perluBantuan,
    self.event.status_priority,
    self.event.kebolehan,
    self.event.noPanggilanRadioTempatan,
    self.event.noHPKetuaKampung];
    
    

    
  }
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
