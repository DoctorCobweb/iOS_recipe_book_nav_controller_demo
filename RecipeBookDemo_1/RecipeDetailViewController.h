//
//  RecipeDetailViewController.h
//  RecipeBookDemo_1
//
//  Created by andre trosky on 21/02/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *recipeLabel;


@property (nonatomic, strong) NSString *recipeName;

@end
