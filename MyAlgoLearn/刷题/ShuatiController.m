//
//  ShuatiController.m
//  MyAlgoLearn
//
//  Created by cuibaoyin on 2019/1/3.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import "ShuatiController.h"

@interface ShuatiController ()

@end

@implementation ShuatiController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)testAction:(id)sender
{
    char *J = "a";
    char *S = "AAbbbbAAAA";
    NSLog(@"%d",numJewelsInStones(J, S));
}

int numJewelsInStones(char* J, char* S) {
    
    int jLenth = (int)strlen(J);
    int sLenth = (int)strlen(S);

    int sum = 0;
    
    for (int m = 0; m < jLenth; m++)
    {
        char jChar = J[m];
        for (int n = 0 ; n < sLenth; n++)
        {
            char sChar = S[n];
            if (jChar == sChar)
            {
                sum++;
            }
        }
    }
    return sum;
}
@end
