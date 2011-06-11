//
//  PruebaSearchBarViewController.m
//  PruebaSearchBar
//
//  Created by Roberto on 6/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PruebaSearchBarViewController.h"

@implementation PruebaSearchBarViewController
@synthesize searchAssist;
@synthesize searchBar;

- (void)dealloc
{
    [searchAssist release];
    [searchBar release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    tableData = [[NSMutableArray alloc] initWithObjects:@"Galicia", @"Asturias", @"Cantabria", @"Pais Vasco", @"Navarra", @"La Rioja", @"Catalu–a", @"Castilla y Le—n", @"Madrid", @"Castilla La-Mancha", @"Arag—n", @"Valencia", @"Extremadura", @"Murcia", @"Andalucia", @"Canarias", @"Baleares", @"Ceuta", @"Melilla", nil];
    searchAssist.tableData = tableData;
    searchAssist.searchBar = searchBar;
    
}


- (void)viewDidUnload
{
    [self setSearchAssist:nil];
    [self setSearchBar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if ( cell == nil )
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
