//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Sylvain on 2012-10-27.
//  Copyright (c) 2012 Sylvain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate> // Specifies that the view controller class adopts the
                                                                             // UITextFieldDelegate  protocol

@property(copy,nonatomic) NSString *textEntered;        // Tells the compiler how to generate the accessor methods(getters and setters)
// Getter : (NSString*) textEntered;
// Setter : (void) setTextEntered:(NSString*)newtextEntered;

@end