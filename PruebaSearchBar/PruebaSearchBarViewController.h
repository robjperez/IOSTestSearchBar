//
//  PruebaSearchBarViewController.h
//  PruebaSearchBar
//
//  Created by Roberto on 6/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchDisplayAssist.h"

@interface PruebaSearchBarViewController : UIViewController<UITableViewDataSource> {
    NSMutableArray *tableData;
    SearchDisplayAssist *searchAssist;
    UISearchBar *searchBar;
}
@property (nonatomic, retain) IBOutlet SearchDisplayAssist *searchAssist;
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;

@end
