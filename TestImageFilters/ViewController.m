//
//  ViewController.m
//  TestImageFilters
//
//  Created by Zonghui Zhang on 12/10/12.
//  Copyright (c) 2012 Zhang Zonghui. All rights reserved.
//

#import "ViewController.h"
#import "GPUImage.h"


@interface ViewController ()

@end

@implementation ViewController

//
//NSString *const kGrayscaleContrastFragmentShaderString = SHADER_STRING
//(
//    varying highp vec2 textureCoordinate;
//
//    uniform sampler2D inputImageTexture;
//
//    void main()
//    {
//    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
//    lowp vec4 outputColor;
//    outputColor.r = (textureColor.r * 0.393) + (textureColor.g * 0.769) + (textureColor.b * 0.189);
//    outputColor.g = (textureColor.r * 0.349) + (textureColor.g * 0.686) + (textureColor.b * 0.168);
//    outputColor.b = (textureColor.r * 0.272) + (textureColor.g * 0.534) + (textureColor.b * 0.131);
//    outputColor.a = 1.0;
//
//    gl_FragColor = outputColor;
//    }
//);

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 1. Capture and filter video
//    GPUImageVideoCamera *videoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset640x480 cameraPosition:AVCaptureDevicePositionBack];
//    videoCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
//    
//    GPUImageFilter *customFilter = [[GPUImageFilter alloc] initWithFragmentShaderFromString:kGrayscaleContrastFragmentShaderString];
//    GPUImageView *filteredVideoView = [[GPUImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    
//    // Add the view somewhere
//    [self.view addSubview:filteredVideoView];
//    
//    [videoCamera addTarget:customFilter];
//    [customFilter addTarget:filteredVideoView];
//    
//    [videoCamera startCameraCapture];
    
    // 2. Caputre and filter a still photo
//    GPUImageStillCamera *stillCamera = [[GPUImageStillCamera alloc] init];
//    stillCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
//    
//    GPUImageFilter *filter = [[GPUImageGammaFilter alloc] init];
//    [stillCamera addTarget:filter];
//    GPUImageView *filterView = [[GPUImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [filter addTarget:filterView];
//    
//    [self.view addSubview:filterView];
//    
//    [stillCamera startCameraCapture];
}

#pragma mark -
#pragma mark IBActions
- (IBAction)btnSelectImageClicked:(id)sender
{
    DLCImagePickerController *picker = [[DLCImagePickerController alloc] init];
    picker.delegate = self;
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:NO];
    [self presentModalViewController:picker animated:YES];
}

#pragma mark -
#pragma mark DLCImagePickerController Delegate
- (void)imagePickerController:(DLCImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:NO];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    if ( info )
    {
        UIImage *selectedImage = [UIImage imageWithData:[info objectForKey:@"data"]];
        [self.imageView setImage:selectedImage];
    }
}

- (void)imagePickerControllerDidCancel:(DLCImagePickerController *)picker
{
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:NO];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
