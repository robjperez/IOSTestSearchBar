//
//  SearchDisplayAssist.h
//  PruebaSearchBar
//
//  Created by Roberto Perez Cubero on 12/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SearchDisplayAssist : NSObject<UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate> {
    NSMutableArray *filteredData;
}

@property (retain, nonatomic) NSArray *tableData;
@property (retain, nonatomic) UISearchBar *searchBar;

@end
