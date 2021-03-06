//
//  PuzzleView.m
//  TilePuzzel
//
//  Created by Travis Spangle on 3/11/11.
//  Copyright 2011 Peak Systems. All rights reserved.
//

#import "PuzzleView.h"

@implementation PuzzleView
@synthesize xPosition, yPosition, orderId;
@synthesize nameLabel;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
		nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
		[self addSubview:nameLabel];
		[nameLabel release];
    }
    return self;
}

+ (PuzzleView *)initWithIdWithPosition:(int)identifier_ xPosition:(int)xPosition_ yPosition:(int)yPosition_;
{
	PuzzleView *pv = [[[PuzzleView alloc] init] autorelease];
	[pv setXPosition:[NSNumber numberWithInt:xPosition_]];
	[pv setYPosition:[NSNumber numberWithInt:yPosition_]];
	
	[pv setOrderId:[NSNumber numberWithInt:identifier_]];
	
	[pv showIdentity];
	
	return pv;
}

- (void)showIdentity;
{
	CGRect labelFrame = CGRectMake(0, 0, 100.0, 100.0);
	nameLabel.frame = labelFrame;
	
	nameLabel.textAlignment = UITextAlignmentCenter;
	nameLabel.backgroundColor = [UIColor greenColor];
	
	[nameLabel setText:[orderId description]];
}

- (void)dealloc {
    [super dealloc];
}


@end
