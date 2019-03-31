//
//
@import Cocoa;
//@import CoreFoundation;
//@import CoreServices;
@import QuickLook;
#include "Markdown.h"

//OSStatus GeneratePreviewForURL(void *thisInterface, QLPreviewRequestRef preview, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options);
//void CancelPreviewGeneration(void *thisInterface, QLPreviewRequestRef preview);

/* -----------------------------------------------------------------------------
   Generate a preview for file

   This function's job is to create preview for designated file
   ----------------------------------------------------------------------------- */

OSStatus GeneratePreviewForURL(void *thisInterface, QLPreviewRequestRef preview, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options)
{

    @autoreleasepool {
        NSData *data = renderMarkdownWithHTML((__bridge NSURL*) url);
        if (data) {
            NSDictionary *props = [[NSDictionary alloc] init];
            QLPreviewRequestSetDataRepresentation(preview, (__bridge CFDataRef)data, kUTTypeHTML, (__bridge CFDictionaryRef)props);
        }
        
        return noErr;
    }
}

void CancelPreviewGeneration(void *thisInterface, QLPreviewRequestRef preview)
{
    // Implement only if supported
}
