//
//  Doctor.h
//  PatientDoctor
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *medicalID;
@property (nonatomic, strong) NSMutableArray *appointmentsArray;
@property (nonatomic, strong) NSMutableArray *patientsArray;



- (instancetype)initDoctorWithName: (NSString *)name medicalID:(NSString *)medicalID;

- (BOOL)acceptAppt: (Patient *)patient;

- (BOOL)dispenseMedicationTo: (Patient *)patient;

- (void)addPerscripts: (Doctor *)doctor symptom:(NSString *)key prescript:(NSString *)object;


@end
