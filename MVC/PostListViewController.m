//
//  PostListViewController.m
//  MVC
//
//  Created by Michael Dorian Bach on 10/23/13.
//  Copyright (c) 2013 Michael Dorian Bach. All rights reserved.
//

#import "PostListViewController.h"
#import "PostTableViewCell.h"

@interface PostListViewController ()

@end

@implementation PostListViewController


// NEED TO UNDERSTAND WHAT THIS DOES...
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    // Create a Post object
    Post *Post1 = [[Post alloc] init];
    Post1.username = @"michael";
    Post1.titletext = @"This is my first post";
    Post1.content = @"Why? Why? Why is objective-c so ugly? There's stuff everywhere!";
    Post1.timeStamp = [NSDate date];
 
    Post *Post2 = [[Post alloc] init];
    Post2.username = @"alison";
    Post2.titletext = @"Today is tomorrow!";
    Post2.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post2.timeStamp = [NSDate date];
    
    Post *Post3 = [[Post alloc] init];
    Post3.username = @"simone";
    Post3.titletext = @"Hello? Can you hear me?";
    Post3.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post3.timeStamp = [NSDate date];
    
    Post *Post4 = [[Post alloc] init];
    Post4.username = @"aubrey";
    Post4.titletext = @"Why Why Why?";
    Post4.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post4.timeStamp = [NSDate date];
    
    Post *Post5 = [[Post alloc] init];
    Post5.username = @"daringfireball";
    Post5.titletext = @"What's a Segue?";
    Post5.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post5.timeStamp = [NSDate date];
    
    Post *Post6 = [[Post alloc] init];
    Post6.username = @"parislemon";
    Post6.titletext = @"This is Hard";
    Post6.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post6.timeStamp = [NSDate date];
    
    Post *Post7 = [[Post alloc] init];
    Post7.username = @"alexson";
    Post7.titletext = @"Live Another Day";
    Post7.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post7.timeStamp = [NSDate date];
    
    Post *Post8 = [[Post alloc] init];
    Post8.username = @"luddington";
    Post8.titletext = @"C# is so much nicer";
    Post8.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post1.timeStamp = [NSDate date];
    
    Post *Post9 = [[Post alloc] init];
    Post9.username = @"applesuer";
    Post9.titletext = @"New iPad Air";
    Post9.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post1.timeStamp = [NSDate date];
    
    Post *Post10 = [[Post alloc] init];
    Post10.username = @"macuser";
    Post10.titletext = @"Everything is Free!";
    Post10.content = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisi urna, cursus dictum viverra non, tempor vitae ante.";
    Post10.timeStamp = [NSDate date];
    
    // Store in an array
    _Posts = [NSMutableArray arrayWithObjects: Post1, Post2, Post3, Post4, Post5, Post6, Post7, Post8, Post9, Post10, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
    
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _Posts.count;
}

- (PostTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    // NEED TO GET A BETTER UNDERSTANDING OF THIS CONCEPT...
    PostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.usernameLabel.text = [_Posts[indexPath.row] username];
    cell.titleLabel.text = [_Posts[indexPath.row] titletext];
    cell.content.text = [_Posts[indexPath.row] content];
    
    // Create a date formatter that we can use
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    // Set the style Date Time you want
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    // Convert date to a string
    NSDate *date = [_Posts[indexPath.row] timeStamp];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    
    // Set it to our newly minted formated date in NSString format
    cell.dateTimeLabel.text = formattedDateString;
    
    return cell;
}

@end
