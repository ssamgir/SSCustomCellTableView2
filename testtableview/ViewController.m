//
//  ViewController.m
//  testtableview
//
//  Created by Amit Bobade on 27/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NSArray *tableData;
    
    NSArray *imageArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // Do any additional setup after loading the view, typically from a nib.



    tableData = [NSArray arrayWithObjects:@"Christ Redeemer- Brazil ", @"Great Wall of China- China", @"Machu Picchu -Peru",@"Petra- Jordan",@"Pyramid at Chichén Itzá - Yucatan Peninsula-Mexico", @"Roman Colosseum- Rome- Italy",@"Taj Mahal- Agra - India",   nil];
    
    
    imageArray = [NSArray arrayWithObjects:@"greatwall_461.jpg", @"petra_461.jpg", @"pyramid_461.jpg", @"christ_461.jpg", @"machupicchu_461.jpg",@"colosseum_461.jpg", @"itza_461.jpg",   nil];
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:indexPath.row]];
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
    
    
}


@end
