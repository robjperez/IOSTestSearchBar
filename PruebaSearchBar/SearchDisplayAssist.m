//
//  SearchDisplayAssist.m
//  PruebaSearchBar
//
//  Created by Roberto Perez Cubero on 12/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchDisplayAssist.h"


@implementation SearchDisplayAssist 
@synthesize tableData, searchBar;

- (void) dealloc
{
    [tableData release];
    [searchBar release];
    [super dealloc];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [filteredData release];
    filteredData = [[NSMutableArray alloc] init];
    for ( NSString* name in tableData )
    {
        if ([[name lowercaseString] rangeOfString:[searchText lowercaseString]].location != NSNotFound )
            [filteredData addObject:name];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [filteredData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if ( cell == nil )
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    cell.textLabel.text = [filteredData objectAtIndex:indexPath.row];
    return cell;
}

@end
