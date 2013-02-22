//
//  ViewController.m
//  RecipeBookDemo_1
//
//  Created by andre trosky on 21/02/13.
//  Copyright (c) 2013 andre trosky. All rights reserved.
//

#import "RecipeBookViewController.h"
#import "RecipeDetailViewController.h"


@implementation RecipeBookViewController
{
    NSArray *recipes;
}

//@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipes count];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *simpleTableIdentifier = @"RecipeCell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;

}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //check to see if the passed in segue variable is the one we're after
    //namely, the segue between "RecipeViewController" and "RecipeDetailViewController".
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        
        //build a path to the selected row in our tableView by calling "tableView:indexPathForSelectedRow".
        NSIndexPath *indexPath = [_tableView indexPathForSelectedRow];
        
        //assign a RecipeDetailViewController to the destination ViewController contained in
        //the segue we're using.
        //segue.destinationViewController returns the view controller whose contents should be displayed
        //at the end of the segue.
        RecipeDetailViewController *destViewController =
        segue.destinationViewController;
        
        //now that we have the right destination ViewController assigned, call set the "recipeName" property
        //using the automatically generated accessor method. The right side of the assignment is just using
        //a message call to find the relevant string located at the "indexPath.row" which is the selected row
        //in the tableView.
        destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
