//
//  main.m
//  PatientDoctor
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        //doctor  1 information
        Doctor *doctor1 = [[Doctor alloc] initDoctorWithName:@"Dr. A" medicalID:@"123"];
        [doctor1 addPerscripts:doctor1 symptom:@"aids" prescript:@"aids pills"];
        
        
        
        //patient 1 information
        Patient *patient1 = [[Patient alloc] initPatientWithName:@"Jim" medicalID:@"12345"];
        patient1.validHealthCard = YES;
        patient1.symptom = @"aids";
        
        
        
        [patient1 visitDoctor: doctor1];
        
        [patient1 requestMedication:doctor1 symptom:@"aids"];
        
    
        NSLog(@"Jim has been prescribed %@",patient1.prescripts);
        
        
        
        
    }
    return 0;
}
