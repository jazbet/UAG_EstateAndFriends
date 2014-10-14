//
//  ViewCell.h
//  EstateAndFriends
//
//  Created by Jazmin B Vazquez Guerrero on 10/11/14.
//  Copyright (c) 2014 Jazmin B Vazquez Guerrero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *DescriptionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *ThumbImage;

@end
