#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
   
    int a = n;
    
    NSMutableArray * array = [[NSMutableArray alloc]init];
    
// convert from decimal to binary


    while (a >= 1) {
        if ( a % 2 == 0){
            
            [array addObject: @0];
        } else {
            
            [array addObject: @1];
        }
        
        a = a/2 ;

    }
    
   
    int d = 8 - array.count;
    
    
    for (int c = 0; c < d; c++) {
        
        [array addObject: @0];
        
        
    }
    
    UInt8 result = 0;
    
    for (int c = 0; c < array.count; c++) {
        
        int aa = pow (2, (array.count - (c +1)));
        
        int num = [[array objectAtIndex: c ] intValue];
        
        result += num * aa;
        
        NSLog(@"%d", result);
    }
 
    
    NSLog(@"%d", result);
    
    
    
    return result  ;
}
