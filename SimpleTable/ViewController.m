//
//  ViewController.m
//  SimpleTable
//
//  Created by Angie Linton on 2017-01-26.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NSArray *recipes;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //Array is inside the viewDidLoad
    recipes = [NSArray arrayWithObjects:@"Eggs Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme /Brulee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];

}

//Required methods are outside viewDidLoad
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee.jpg"];
    
    return cell;
}



@end
