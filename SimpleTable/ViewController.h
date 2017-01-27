//
//  ViewController.h
//  SimpleTable
//
//  Created by Angie Linton on 2017-01-26.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@end




//UITableViewDataSource protocol declares two required methods (tableView:cellForRowAtIndexPath and tableView:numberOfRowsInSection) that you have to implement. Through implementing these methods, you tell Table View how many rows to display and the data in each row.
