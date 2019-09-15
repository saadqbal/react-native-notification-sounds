#import "NotificationSounds.h"


@implementation NotificationSounds

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
    // TODO: Implement some actually useful functionality
	callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
}

RCT_REMAP_METHOD(getNotifications, loadSoundsWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
        NSMutableArray *audioFileList = [[NSMutableArray alloc] init];
    
        NSFileManager *fileManager = [[NSFileManager alloc] init];
        NSURL *directoryURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds"];
        NSArray *keys = [NSArray arrayWithObject:NSURLIsDirectoryKey];
    
        NSDirectoryEnumerator *enumerator = [fileManager
                                             enumeratorAtURL:directoryURL
                                             includingPropertiesForKeys:keys
                                             options:0
                                             errorHandler:^(NSURL *url, NSError *error) {
                                                 // Handle the error.
                                                 // Return YES if the enumeration should continue after the error.
                                                 return YES;
                                             }];
    
    
        for (NSURL *url in enumerator) {
            NSError *error;
            NSNumber *isDirectory = nil;

            if (! [url getResourceValue:&isDirectory forKey:NSURLIsDirectoryKey error:&error]) {
                // handle error
            }
            else if (! [isDirectory boolValue]) {
                NSString* fileName = [NSString stringWithFormat:@"%@", url.lastPathComponent];
                NSArray *title = [fileName componentsSeparatedByString:@"."];
                
                NSCharacterSet *notAllowedChars = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
                NSString *soundTitle = [[title[0] componentsSeparatedByCharactersInSet:notAllowedChars] componentsJoinedByString:@" "];
                NSLog (@"Result: %@", soundTitle);

                
                NSString *urlString = url.absoluteString;
                NSArray *arrayOfAudio = [NSArray arrayWithObjects:soundTitle, urlString, nil]; // if you want immutable array
                [audioFileList addObject:arrayOfAudio];
            }
        }

    // NSLog(@"URL: %@", audioFileList);
    if (audioFileList) {
        resolve(audioFileList);
    } else {
        NSError *error = {@"NO data found"};
        reject(@"error", @"error description", error);
    }
}




//(void)loadAudioFileList{
//    audioFileList = [[NSMutableArray alloc] init];
//
//    NSFileManager *fileManager = [[NSFileManager alloc] init];
//    NSURL *directoryURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds"];
//    NSArray *keys = [NSArray arrayWithObject:NSURLIsDirectoryKey];
//
//    NSDirectoryEnumerator *enumerator = [fileManager
//                                         enumeratorAtURL:directoryURL
//                                         includingPropertiesForKeys:keys
//                                         options:0
//                                         errorHandler:^(NSURL *url, NSError *error) {
//                                             // Handle the error.
//                                             // Return YES if the enumeration should continue after the error.
//                                             return YES;
//                                         }];
//
//    for (NSURL *url in enumerator) {
//        NSError *error;
//        NSNumber *isDirectory = nil;
//        if (! [url getResourceValue:&isDirectory forKey:NSURLIsDirectoryKey error:&error]) {
//            // handle error
//        }
//        else if (! [isDirectory boolValue]) {
//            [audioFileList addObject:url];
//        }
//    }
//}




@end
