//
//  SFActivityListViewController.m
//  Congress
//
//  Created by Daniel Cloud on 11/30/12.
//  Copyright (c) 2012 Sunlight Foundation. All rights reserved.
//

#import "SFActivityListViewController.h"
#import "UIScrollView+SVInfiniteScrolling.h"
#import "SFBillService.h"
#import "SFBill.h"

@interface SFActivityListViewController()
{
    BOOL _updating;
}

@end

@implementation SFActivityListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];

    if (self) {
        // Custom initializatio
        self->_updating = NO;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.activityList = [NSMutableArray arrayWithCapacity:20];

    // infinite scroll with rate limit.
    __weak SFActivityListViewController *weakSelf = self;
    [self.tableView addInfiniteScrollingWithActionHandler:^{
        BOOL executed = [SSRateLimit executeBlock:^{
            [weakSelf setIsUpdating:YES];
            NSUInteger pageNum = 1 + [self.activityList count]/20;
            [SFBillService recentlyIntroducedBillsWithPage:[NSNumber numberWithInt:pageNum] success:^(AFJSONRequestOperation *operation, id responseObject) {
                NSMutableArray *billsSet = (NSMutableArray *)responseObject;
                NSLog(@"Got updated bills");
                NSUInteger offset = [self.activityList count];
                [weakSelf.activityList addObjectsFromArray:billsSet];
                NSMutableArray *indexPaths = [NSMutableArray new];
                for (NSUInteger i = offset; i < [weakSelf.activityList count]; i++) {
                    [indexPaths addObject:[NSIndexPath indexPathForRow:i inSection:0]];
                }
                [weakSelf.tableView beginUpdates];
                [weakSelf.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
                [weakSelf.tableView endUpdates];
                [weakSelf.tableView.infiniteScrollingView stopAnimating];
                [weakSelf setIsUpdating:NO];
            } failure:^(AFJSONRequestOperation *operation, NSError *error) {
                NSLog(@"Error: %@", error.localizedDescription);
                [weakSelf.tableView.infiniteScrollingView stopAnimating];
                [weakSelf setIsUpdating:NO];
            }];
        } name:@"SFActivityListViewController-InfiniteScroll" limit:2.0f];

        if (!executed & ![weakSelf isUpdating]) {
            [weakSelf.tableView.infiniteScrollingView stopAnimating];
        }
        NSLog(@"SFActivityListViewController-InfiniteScroll executed: %@ and isUpdating: %@", (executed ? @"YES" : @"NO"), ([weakSelf isUpdating] ? @"YES" : @"NO"));

    }];

    [self.tableView triggerInfiniteScrolling];
//    [self getLatestActivity];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getLatestActivity
{
    [SFBillService recentlyIntroducedBillsWithSuccess:^(AFJSONRequestOperation *operation, id responseObject) {
        NSMutableArray *billsSet = (NSMutableArray *)responseObject;
        self.activityList = billsSet;
        [self.tableView reloadData];
    } failure:^(AFJSONRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error.localizedDescription);
    }];
}

-(void)setIsUpdating:(BOOL )updating
{
    self->_updating = updating;
}

-(BOOL)isUpdating
{
    return self->_updating;
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.activityList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    NSUInteger row = [indexPath row];
    SFBill *bill = (SFBill *)[self.activityList objectAtIndex:row];
    [[cell textLabel] setText:(bill.short_title ? bill.short_title : bill.official_title)];
    [[cell detailTextLabel] setText:[bill.last_action_at ISO8601String]];

    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"didSelectRowAtIndexPath...");
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end