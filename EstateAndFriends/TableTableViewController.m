//
//  TableTableViewController.m
//  EstateAndFriends
//
//  Created by Jazmin B Vazquez Guerrero on 10/10/14.
//  Copyright (c) 2014 Jazmin B Vazquez Guerrero. All rights reserved.
//

#import "TableTableViewController.h"
#import "ViewCell.h"
#import "CityViewController.h"

@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _Title = @[@"Jalisco",
               @"Colima",
               @"Michoacan",
               @"Queretaro",
               @"DF",
               @"Puebla",
               @"Aguascalientes",
               @"Nayarit",];
    
    _Description = @[@"tierra del tequila",
                     @"ciudad de cocos",
                     @"playas lindas",
                     @"cultura",
                     @"novedad",
                     @"comida rica",
                     @"ciudad magica",
                     @"playas de ensueño",];
    
    _Images = @[@"jalisco.jpg",
                @"colima.JPG",
                @"michoacan.jpg",
                @"queretaro.jpg",
                @"df.jpg",
                @"puebla.jpg",
                @"aguascalientes.jpg",
                @"nayarit.jpg",];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _Title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"ViewCell";
    ViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    int row = [indexPath row];
    
    cell.TitleLabel.text = _Title[row];
    cell.DescriptionLabel.text = _Description[row];
    cell.ThumbImage.image = [UIImage imageNamed:_Images[row]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"ShowDetails"])
    {
        CityViewController *cityViewController = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        int row = [myIndexPath row];
        
        cityViewController.DetailModal = @[_Title[row],_Description[row],_Images[row]];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
