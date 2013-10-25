//
//  PostTableViewCell.h
//  MVC
//
//  Created by Michael Dorian Bach on 10/23/13.
//  Copyright (c) 2013 Michael Dorian Bach. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"

@interface PostTableViewCell : UITableViewCell

// Create IBOutlets so that TableViewCells knows about the prototype cell items.
@property (nonatomic) IBOutlet UILabel *usernameLabel;
@property (nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic) IBOutlet UILabel *content;
@property (nonatomic) IBOutlet UILabel *dateTimeLabel;

@end