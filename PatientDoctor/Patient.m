//
//  Patient.m
//  PatientDoctor
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initPatientWithName: (NSString *)name medicalID:(NSString *)medicalID {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.medicalID = medicalID;
        self.prescripts = [[NSMutableArray alloc] init];
    }
    return self;
}


- (BOOL)visitDoctor: (Doctor *) doctor {
 
    return self.hasAppointment = [doctor acceptAppt: self];

}

-(void)requestMedication: (Doctor *) doctor symptom:(NSString *)symptom{

    [doctor dispenseMedicationTo: self];
    

}


@end
