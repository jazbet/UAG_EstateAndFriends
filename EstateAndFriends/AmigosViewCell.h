//
//  AmigosViewCell.h
//  EstateAndFriends
//
//  Created by Jazmin B Vazquez Guerrero on 10/11/14.
//  Copyright (c) 2014 Jazmin B Vazquez Guerrero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AmigosViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *NameLabel;
@property (strong, nonatomic) IBOutlet UILabel *EmailLabel;
@property (strong, nonatomic) IBOutlet UILabel *AgeLabel;
@property (strong, nonatomic) IBOutlet UIImageView *ThumbImage;

@end
