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
    [self.view addSubview:self.mapView];
}



@end
