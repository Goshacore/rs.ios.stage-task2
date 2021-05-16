#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    
    
    NSMutableString * string = [[NSMutableString alloc]init];
    
    
     
    
    
    if (numbersArray.count > 4) {
        
        
        for (NSInteger  i = 0; i < 4; i++ )  {
            
        
            NSInteger intValue = [[numbersArray objectAtIndex: i ]intValue] ;
            
            
            
            if ( intValue >= 0 && intValue <= 255 ) {
            
        
        [string appendFormat: @"%ld.", (long)intValue];
                
            } else if (intValue > 255) {
                
                [string setString:@"The numbers in the input array can be in the range from 0 to 255."];
           
               
                
                NSLog(@"ERROR");
                break;
                
            } else if (intValue < 0){
                
                
                    
                    [string setString:@"Negative numbers are not valid for input."];
                
                   
                    
                    NSLog(@"ERROR");
                    break;
                    
                
            }} } else if (numbersArray.count == 4) {
        
        for (NSInteger  i = 0; i < numbersArray.count; i++ )  {
            
        
            NSInteger intValue = [[numbersArray objectAtIndex: i ]intValue] ;
            
            
            
            if ( intValue >= 0 && intValue <= 255 ) {
            
        
        [string appendFormat: @"%ld.", (long)intValue];
                
            } else if (intValue > 255) {
                
                [string setString:@"The numbers in the input array can be in the range from 0 to 255."];
           
               
                
                NSLog(@"ERROR");
                break;
                
            } else if (intValue < 0){
                
                
                    
                    [string setString:@"Negative numbers are not valid for input."];
                
                   
                    
                    NSLog(@"ERROR");
                    break;
                    
                
            }
    
    }
        
        
    } else if (numbersArray.count < 4) {
        
        
        for (NSInteger  i = 0; i < numbersArray.count; i++ )  {
            
        
            NSInteger intValue = [[numbersArray objectAtIndex: i ]intValue] ;
            
            
            
            if ( intValue >= 0 && intValue <= 255 ) {
            
        
        [string appendFormat: @"%ld.", (long)intValue];
                
            } else if (intValue > 255) {
                
                [string setString:@"The numbers in the input array can be in the range from 0 to 255."];
           
               
                
                NSLog(@"ERROR");
                break;
                
            } else if (intValue < 0){
                
                
                    
                    [string setString:@"Negative numbers are not valid for input."];
                
                   
                    
                    NSLog(@"ERROR");
                    break;
                    
                
            }
            
        } if ([string length] != 0 && ![string isEqual:@"The numbers in the input array can be in the range from 0 to 255."] && ![string isEqual:@"Negative numbers are not valid for input."]) {
        for (NSInteger i = 0; i < 4- numbersArray.count; i++ ) {
            
            [string appendString: @"0."];
        }
        }
        
        
    }
    
    if ([string length] != 0 && ![string isEqual:@"The numbers in the input array can be in the range from 0 to 255."] && ![string isEqual:@"Negative numbers are not valid for input."] ) {
        
        [string deleteCharactersInRange:NSMakeRange([string length]-1, 1)];
    
    }
    return string;
    
    
    
}

@end
