//
//  ViewController.h
//  RecipeBookDemo_1
//
//  Created by andre trosky on 21/02/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeBookViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


//this variable is added to reference the tableView
//in the implementation file which passing data through the segue
//to "RecipeDetailViewController.m"
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
