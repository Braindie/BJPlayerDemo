//
//  CourseTableCell.m
//  MobileStudy
//
//  Created by chenxili on 14/12/23.
//
//

#import "CourseTableCell.h"

@implementation CourseTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.stateImage=[[UIImageView alloc] initWithFrame:CGRectMake(10, 18, 15, 15)];
        self.stateImage.image=[UIImage imageNamed:@""];
        [self addSubview:self.stateImage];
        
#if ISMobile_Version
        
        self.titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(27, 15, 277+GB_HorizonDifference, 20)];
#else
        self.titleLabel=[[RCLabel alloc] initWithFrame:CGRectMake(27, 15, 277, 20)];

#endif
        
        self.titleLabel.textAlignment=NSTextAlignmentLeft;
        self.titleLabel.textColor=[UIColor whiteColor];
        [self addSubview:self.titleLabel];
        
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    
}
#if ISMobile_Version
#else
-(void) UpdateRtLabel:(RCLabel *)label;
{
    [self.titleLabel removeFromSuperview];
    self.titleLabel = label;
    self.titleLabel.userInteractionEnabled = YES;
    [self addSubview:self.titleLabel];
}
#endif


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
