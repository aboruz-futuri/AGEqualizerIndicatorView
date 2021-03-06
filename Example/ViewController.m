// ViewController.m
//
// Copyright (c) 2015 Alex Givens (http://alexgivens.com/
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "ViewController.h"
#import "AGEqualizerIndicatorView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet AGEqualizerIndicatorView *equalizerIndicatorView;

- (IBAction)didPressStartButton:(id)sender;
- (IBAction)didPressPauseButton:(id)sender;
- (IBAction)didPressStopButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.equalizerIndicatorView startAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didPressStartButton:(id)sender {
    [self.equalizerIndicatorView startAnimated:YES];
}

- (IBAction)didPressPauseButton:(id)sender {
    [self.equalizerIndicatorView pauseAnimated:YES];
}

- (IBAction)didPressStopButton:(id)sender {
    [self.equalizerIndicatorView stopAnimated:YES];
}

@end
