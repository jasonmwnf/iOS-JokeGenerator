//
//  ViewController.m
//  JokeGenerator
//
//  Created by Jason Williams on 2016-01-18.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jokeButton:(id)sender {
    
    NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"JokeList" ofType:@"plist"];
    NSDictionary *wordDIC = [[NSDictionary alloc] initWithContentsOfFile:fileContents];
    
    NSMutableArray *items = [wordDIC valueForKey:@"Jokes"];
    int randomJoke = arc4random() % [items count];
    NSString *word = [items objectAtIndex:randomJoke];
    
    [self.Label setText:[[NSString alloc] initWithFormat:@"%@", word]];
    
}
@end
