#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSArray * endArray;



    for (int i = 0; i < array.count; i++){
        
        if( ![array[i] isKindOfClass: NSArray.class]){
            return  @[];
            
        }
        
    }
    
    

    NSMutableArray * arrayString = [[NSMutableArray alloc]init];
    NSMutableArray * arrayNumbers = [[NSMutableArray alloc]init];
    
    
 
    
    for (NSArray* array1 in array ){
        
        
        
        int b = 0;
        int a = 0;
        for (int i = 0; i< array1.count; i++){
            
            
            
            
            if ( [array1[i] isKindOfClass: [NSNumber class]] ){
                
                
                [arrayNumbers addObject: [array1 objectAtIndex:i]];
                
               b += 1;
                       
            } else if ([array1[i] isKindOfClass: [NSString class]])  {
                
                
                [arrayString addObject:[array1 objectAtIndex:i]];
                
                a += 1;
            }
                
            if (a>0 && b>0 ) {
                
                [arrayString setArray:@[]];
                [arrayNumbers setArray:@[]];
               break;
                
                
            }
           
        }
    
    }
    
    
   

    if (arrayString.count > 1 && arrayNumbers.count == 0) {
        
        endArray = [arrayString sortedArrayUsingSelector:@selector(compare:)];
        
        
        
        
    } else if (arrayString.count == 0 && arrayNumbers.count > 1) {
        
        
     
        
        endArray = [arrayNumbers sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            return [obj1 compare:obj2];
            
        }];
      
        
        
    } else if (arrayString.count > 1 && arrayNumbers.count > 1) {
        
        NSArray * arrayString1 = [arrayString sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            return [obj2 compare:obj1];  }];
        
      //  [arrayString sortedArrayUsingSelector:@selector(compare:)];
        
        
        
        
        NSArray * arrayNumbers1 =  [arrayNumbers sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            return [obj1 compare:obj2];
            
        }];
        
         
        
        
        endArray = [NSArray arrayWithObjects: arrayNumbers1, arrayString1,  nil];
        
        
    } else if (arrayString.count == 0 && arrayNumbers.count == 0) {
        
        
        endArray = @[];
        
        
    }
    
    return endArray;
}

@end
