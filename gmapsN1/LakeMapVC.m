//
//  LakeMapVC.m
//  gmapsN1
//
//  Created by pavel on 11/20/16.
//  Copyright © 2016 pavel. All rights reserved.
//

#import "LakeMapVC.h"
@import GoogleMaps;

@interface LakeMapVC ()
@property(strong, nonatomic) GMSMapView *mapView;
@end






@implementation LakeMapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:28.5382 longitude:-81.3687 zoom:14 bearing:0 viewingAngle:0];
    self.mapView = [GMSMapView mapWithFrame: self.view.bounds camera:camera];
    self.mapView.mapType = kGMSTypeNormal;
    self.mapView.myLocationEnabled = true;
    self.mapView.settings.compassButton = true;
    self.mapView.settings.myLocationButton = true;
    [self.mapView setMinZoom:10 maxZoom:18];
    [self.view addSubview:self.mapView];
    
}
- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.mapView.padding = UIEdgeInsetsMake(self.topLayoutGuide.length + 5, 0, self.bottomLayoutGuide.length + 5, 0);
}
@end
