//
//  DataInputVCViewController.m
//  BanciBanjir
//
//  Created by Hijazi on 4/10/15.
//  Copyright © 2015 iReka Soft. All rights reserved.
//

#import "DataInputVC.h"
#import <WebKit/WebKit.h>

@interface DataInputVC ()

@end

@implementation DataInputVC

- (void)viewDidLoad {
  [super viewDidLoad];
  
  
  manager = [[CLLocationManager alloc] init];
  manager.delegate = self;
  manager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
  manager.distanceFilter = 20;
  
  
  NSLog(@"%d",[CLLocationManager authorizationStatus]);
 
}

- (void)viewDidAppear:(BOOL)animated{
  [super viewDidAppear:animated];
  
  if (didAppear==NO) {
    if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined) {
      //  [manager startUpdatingLocation];
      [manager requestWhenInUseAuthorization];
    }else if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusAuthorizedWhenInUse){
      [manager startUpdatingLocation];
    }

    didAppear = YES;
  }
  
}

#pragma mark - CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager *)manager_
     didUpdateLocations:(NSArray<CLLocation *> *)locations{
  
  NSLog(@"--- %@",locations);
  for (CLLocation *location in locations) {
    latitude = @(location.coordinate.latitude);
    longitude = @(location.coordinate.longitude);
  }
  
  self.lbl_location.text = [NSString stringWithFormat:@"%@, %@",latitude, longitude];
  
}

- (void)locationManager:(CLLocationManager *)manager_ didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
  
  if (status == kCLAuthorizationStatusAuthorizedWhenInUse) {
    
    [manager startUpdatingLocation];
    
  }
  
}


- (IBAction)submit:(id)sender {
  
  [self.webView evaluateJavaScript:@"document.getElementById('name').value;" completionHandler:^(NSString *result, NSError *error)
   {
     NSLog(@"Result %@",result);
     name = result;
     
   }];
  
  [self.webView evaluateJavaScript:@"document.getElementById('namaTuanRumah').value;" completionHandler:^(NSString *result, NSError *error)
   {
     NSLog(@"Result %@",result);
     namaTuanRumah = result;
     
   }];
  
  [self.webView evaluateJavaScript:@"document.getElementById('tel').value;" completionHandler:^(NSString *result, NSError *error)
   {
     NSLog(@"tel %@",result);
     tel = result;
     
   }];

  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.664356861');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"hakMilik %@",result);
     hakMilik = [result componentsJoinedByString:@"|"];
     
   }];
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.1706676719');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Ayah %@",result);
     stat_ayah = [result componentsJoinedByString:@"|"];
     
   }];

  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.1107280715');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"stat_ibu %@",result);
     stat_ibu = [result componentsJoinedByString:@"|"];
     
   }];
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.1569600458');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Ahli 01 %@",result);
     stat_ahli01 = [result componentsJoinedByString:@"|"];
     

   }];
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.1896268542');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Ahli 02 %@",result);
     stat_ahli02 = [result componentsJoinedByString:@"|"];
     
     
   }];

  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.802751435');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Ahli 03 %@",result);
     stat_ahli03 = [result componentsJoinedByString:@"|"];
     
     
   }];
  
  
  
  
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.1633444420');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Ahli 04 %@",result);
     stat_ahli04 = [result componentsJoinedByString:@"|"];
     
     
   }];
  
  
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.96159731');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Ahli 05 %@",result);
     stat_ahli05 = [result componentsJoinedByString:@"|"];
     
     
   }];
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.2033398101');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"status_perluBantuan %@",result);
     status_perluBantuan = [result componentsJoinedByString:@"|"];
     
     
   }];
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.1166249124');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Prioriti %@",result);
     status_priority = [result componentsJoinedByString:@"|"];
     
     
   }];
  
  
  [self.webView evaluateJavaScript:@"var choices = [];var els = document.getElementsByName('entry.1607157797');for (var i=0;i<els.length;i++){if (els[i].checked){choices.push(els[i].value);}}choices;" completionHandler:^(NSArray *result, NSError *error)
   {
     NSLog(@"Kebolehan %@",result);
     kebolehan = [result componentsJoinedByString:@"|"];
     
     
   }];
  
  [self.webView evaluateJavaScript:@"document.getElementById('noPanggilanRadioTempatan').value;" completionHandler:^(NSString *result, NSError *error)
   {
     NSLog(@"noPanggilanRadioTempatan %@",result);
     noPanggilanRadioTempatan = result;
     
   }];
  
  [self.webView evaluateJavaScript:@"document.getElementById('noHPKetuaKampung').value;" completionHandler:^(NSString *result, NSError *error)
   {
     NSLog(@"noHPKetuaKampung %@",result);
     noHPKetuaKampung = result;
     [self update];
   }];
  
  [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)getCurrentLocation:(id)sender {
  
  if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusAuthorizedAlways){
    [manager startUpdatingLocation];
  }
  
}

- (void)update{
  NSLog(@"nama %@ %@ %@",name, namaTuanRumah,hakMilik);
  
    
  
  Event *event = [NSEntityDescription insertNewObjectForEntityForName:[Event description] inManagedObjectContext:self.managedObjectContext];
  
  event.name = name;
  event.latitude = latitude;
  event.longitude = longitude;
  ;
  
  event.namaTuanRumah = namaTuanRumah;
  event.tel  = tel;
  event.hakMilik = hakMilik;
  event.stat_ayah = stat_ayah;
  event.stat_ibu = stat_ibu;
  event.stat_ahli01= stat_ahli01;
  event.stat_ahli02=stat_ahli02;
  event.stat_ahli03=stat_ahli03;
  event.stat_ahli04=stat_ahli04;
  event.stat_ahli05=stat_ahli05;
  event.lokasiTempatBerkumpulAtasBukit=lokasiTempatBerkumpulAtasBukit;
  event.status_perluBantuan=status_perluBantuan;
  event.status_priority=status_priority;
  event.kebolehan=kebolehan;
  event.noPanggilanRadioTempatan=noPanggilanRadioTempatan;
  event.noHPKetuaKampung=noHPKetuaKampung;
  

  event.timeStamp = [NSDate date];
  
  //  save image
  
  // 3. Save the image

  if (self.img_rumah.image) {
    NSString *path = [ImageSaver saveImageToDisk:self.img_rumah.image ext:@"gambarRumah"];
    event.gambarRumah = path;
    
  }
  
  if (self.img_gambarAhliKeluarga.image) {
    NSString *path = [ImageSaver saveImageToDisk:self.img_gambarAhliKeluarga.image ext:@"ahliKeluarga"];
    event.gambarAhliKeluarga = path;
    
  }
  
  if (self.img_ic.image) {
    NSString *path = [ImageSaver saveImageToDisk:self.img_ic.image ext:@"ic"];
    event.gambarIC = path;
    
  }
  
  if (self.img_ubatan.image) {
    NSString *path = [ImageSaver saveImageToDisk:self.img_ubatan.image ext:@"ubatan"];
    event.gambarUbatan = path;
    
  }
  
  
  // Save the context.
  NSError *error = nil;
  if (![self.managedObjectContext save:&error]) {
    // Replace this implementation with code to handle the error appropriately.
    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    abort();
  }
  

  
  [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - actions

- (IBAction)rumah:(UIButton *)sender {
  cameraForInt = 1;
  [self showOptions:sender];
}

- (IBAction)ic:(UIButton *)sender {
    cameraForInt = 2;
  [self showOptions:sender];
}

- (IBAction)ubatan:(UIButton *)sender {
    cameraForInt = 3;
  [self showOptions:sender];
}

- (IBAction)ahliKeluarga:(id)sender {
  cameraForInt = 4;
  [self showOptions:sender];
}

- (void)showOptions:(UIButton *)button{
  
  
  UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Choose" message:@"Image" preferredStyle:UIAlertControllerStyleActionSheet];
  
  UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    
  }];
  [alert addAction:action1];
  UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Camera" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePickerController.delegate = self;
    [self presentViewController:imagePickerController animated:YES completion:nil];
  }];
  [alert addAction:action2];
  UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"Photo" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;
    [self presentViewController:imagePickerController animated:YES completion:nil];
  }];
  [alert addAction:action3];
  

  
  UIPopoverPresentationController *pop = [alert popoverPresentationController];
  pop.sourceView = button;
  pop.sourceRect = button.bounds;
  
  
  [self presentViewController:alert animated:YES completion:nil];
}



#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
  
  NSLog(@"got it ");
  [picker dismissViewControllerAnimated:YES completion:nil];
  
  UIImage *img = info[UIImagePickerControllerOriginalImage];
  if (cameraForInt == 1) {
    self.img_rumah.image = img;
  }else if (cameraForInt == 2){
    self.img_ic.image = img;
  }else if (cameraForInt == 3){
    self.img_ubatan.image = img;
  }else if (cameraForInt == 4){
    self.img_gambarAhliKeluarga.image = img;
  }
  
}


#pragma mark - WKScriptMessageHandler

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message{
  
  if ([message.name isEqualToString:@"didFetch"]) {
    
    NSLog(@"item %@",message.body);
    
    
  }
  
}


- (void)viewDidLayoutSubviews{
  [super viewDidLayoutSubviews];
  // Do any additional setup after loading the view.
  
  if (isLoad == NO) {

    configuration = [[WKWebViewConfiguration alloc] init];
    
    NSString *fetchString = [NSString stringWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"fetch" withExtension:@"js"] encoding:NSUTF8StringEncoding error:NULL];
    
    WKUserScript *fetchScript = [[WKUserScript alloc] initWithSource:fetchString injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
    
    
    
    
    [configuration.userContentController addUserScript:fetchScript];
    
    [configuration.userContentController addScriptMessageHandler:self name:@"didFetch"];
    
    self.webView = [[WKWebView alloc] initWithFrame:self.view_ref.bounds configuration:configuration];
    self.webView.navigationDelegate = self;
    
    [self.view_ref addSubview:self.webView];
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"HTML"]];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];

   
    
    isLoad = YES;
  }
  
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancel:(UIButton *)sender {
  
  UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Are You Sure?" message:@"" preferredStyle:UIAlertControllerStyleActionSheet];
  
  UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    
  }];
  [alert addAction:action1];
  
  UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
  }];
  [alert addAction:action2];
  
  
  UIPopoverPresentationController *pop = [alert popoverPresentationController];
  pop.sourceView = sender;
  pop.sourceRect = sender.bounds;
  
  
  [self presentViewController:alert animated:YES completion:nil];
  
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
