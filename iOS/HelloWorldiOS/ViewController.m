//
//  ViewController.m
//  HelloWorldiOS
//
//  Created by Chris Vanderschuere on 10/22/13.
//  Copyright (c) 2013 CDVConcepts. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Load our button onto the screen
    self.sayHello = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.sayHello setTitle:@"Say Hello" forState:UIControlStateNormal];
    
    //Add it to our view
    [self.view addSubview:self.sayHello];
    
    //Put button at a specfic spot
    [self.sayHello setFrame:CGRectMake(50, 50, 200, 50)];
    
    //Assign some action to the button
    [self.sayHello addTarget:self action:@selector(alertMessageThatSaysHello:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) alertMessageThatSaysHello:(UIButton *)button{
    NSLog(@"Hello called: %@",button);
    
    UIAlertView* helloWorldAlert = [[UIAlertView alloc] initWithTitle:@"Hello World" message:@"How are you today?" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles: nil];
    
    [helloWorldAlert show];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
