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
        Patient *patient1 = [[Patient alloc] initPatientWithName:@"Jim" validHealthCard:YES symptoms:@"aids"];
    
        
        [doctor1 acceptAppt: patient1];
        
        [doctor1 dispenseMedicationTo: patient1];
        
        
        
        
        
    }
    return 0;
}
