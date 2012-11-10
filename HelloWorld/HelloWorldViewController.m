//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Sylvain on 2012-10-27.
//  Copyright (c) 2012 Sylvain. All rights reserved.
//

#import "HelloWorldViewController.h"

// Class extension
@interface HelloWorldViewController ()
- (IBAction)updateText:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

// Class implementation
@implementation HelloWorldViewController

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

- (IBAction)updateText:(id)sender
{
    self.textEntered = self.textField.text; // Sets the view controller's username to the text in the text field
    NSString *text = self.textEntered;      // Creates a new variable of type NSString and sets it to the view controller's username
    
    if([text length] == 0)
        text = @"Fuck off!!";
    
   // NSString *initString = [[NSString alloc] initWithFormat:@"Fuck %@!!", text];        // Allocation and initialisation of an NSString Object
    self.label.text = text;
}

- (BOOL)textFieldShouldReturn:(UITextField*)theTextField       // Method included by the UITextFieldDelegate protocol called when the user hits
{                                                              // the "Return" button
    if(theTextField == self.textField)                         // Not really necessary since there is only one text field in this app
        [theTextField resignFirstResponder];                   // When a text field becomes first responder, it triggers the apparition of the keyboard
                                                               // so forcing the text field to lose the first responder status dismisses the keyboard
    return YES;        
}
@end
