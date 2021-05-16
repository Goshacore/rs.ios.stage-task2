


#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    
    NSInteger result = 0;
    NSInteger number1 = [number intValue];
    
 if ( [array isEqualToArray:@[]] || array.count < 2) {
 
 return 0;
 
 }
 
 
    NSMutableArray* array2 = [[NSMutableArray alloc]init];
    
    
    [array2 addObjectsFromArray: array];
    
    for (NSInteger i = 0; i< array.count; i++){
        
        
        
        [array2 sortUsingComparator:^NSComparisonResult(id obj2, id obj1) {
            return [obj2 compare:obj1];
        }];
        
    
        for(NSInteger b = 1; b  < array2.count; b++ ){
            
         int v = [[array2 objectAtIndex: b  ] intValue];
            int vv = [[array2 objectAtIndex: 0 ] intValue];
            
            if (v - vv == number1 || vv - v  == number1 ) {
                
                result += 1;
                
            }
            
            
            if (b == array2.count -1){
                
                [array2 removeObjectAtIndex:0];
                
                
            }
        }
        
    }
    
    
    
    return result;
}



@end
