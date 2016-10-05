//
//  main.m
//  Bubles sorted
//
//  Created by Leonardeta on 04/10/2016.
//  Copyright © 2016 Leonardeta. All rights reserved.
//

#import <Foundation/Foundation.h>

//void swap(char *item, int count)
//{
//    int a,b;
//    char temp;
//    BOOL reverse;
//    do {
//        reverse=NO;
//        for(a=1; a < count; ++a)
//            for(b=count-1; b >= a; --b)
//            {
//                if(item[b-1] > item[b])
//                {
//                    //swap elements
//                    temp=item[b-1];
//                    item[0]=item[1];
//                    item[1]=temp;
//                    reverse=YES;
//                }
//            }
//    } while (reverse);
//}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSMutableArray *myArray= [@[@"4", @"8", @"1", @"9", @"2", @"5", @"3", @"7", @"6"] mutableCopy];
        BOOL swapped;
        
        do{
            swapped=NO;
            int count=[myArray count];
            for (int i1=0; i1<(count-1);i1++)
            {
                
                if([myArray[i1] intValue]>[myArray[i1+1] intValue])
                {
                    NSNumber *temp = myArray[i1];
                    
                    
                    myArray[i1] = myArray[i1+1];
                    myArray[i1+1] = temp;
                    swapped=YES;
                }
            }
        }    while (swapped);

        NSLog(@"The sorted array:%@", myArray);
    }
        return 0;

}
