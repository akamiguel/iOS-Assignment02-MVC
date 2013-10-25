//
//  Post.h
//  MVC
//
//  Created by Michael Dorian Bach on 10/23/13.
//  Copyright (c) 2013 Michael Dorian Bach. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (nonatomic) NSString *username;
@property (nonatomic) NSString *titletext;
@property (nonatomic) NSString *content;
@property (nonatomic) NSDate *timeStamp;

@end
