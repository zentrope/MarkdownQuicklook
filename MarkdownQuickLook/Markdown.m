//
//  Markdown.m
//  MarkdownQuickLook
//
//  Created by Keith Irwin on 3/29/19.
//  Copyright © 2019 Zentrope. All rights reserved.
//

@import Foundation;
@import JavaScriptCore;
#import "Markdown.h"

NSString *loadFile(NSString *path, NSString *ext) {
    NSError *error = nil;

    NSString *bundleId = @"com.zentrope.MarkdownQuickLook";
    NSBundle *bundle = [NSBundle bundleWithIdentifier:bundleId];

    NSString *scriptPath = [bundle pathForResource:path ofType:ext];
    NSString *script = [[NSString alloc] initWithContentsOfFile:scriptPath encoding:NSUTF8StringEncoding error:&error];

    return script;
}

NSData *renderMarkdownWithHTML(NSURL* url) {
    @autoreleasepool {

        NSURL *baseDir = [url URLByDeletingLastPathComponent];

        NSStringEncoding encoding = 0;
        NSError *error = nil;
        NSString *source = [[NSString alloc] initWithContentsOfURL:url usedEncoding:&encoding error:&error];

        source = [source stringByReplacingOccurrencesOfString:@"`" withString:@"\\`"];

        NSString *markdown =  loadFile(@"lib/marked.min", @"js");
        NSString *highlight = loadFile(@"lib/highlight.pack", @"js");

        NSString *hStyle =    loadFile(@"lib/highlight.github", @"css");
        NSString *style =     loadFile(@"lib/github", @"css");

        NSString *template =  loadFile(@"lib/index", @"html");

        // Add the source text directly into the script that invokes the rendering.
        NSString *main =      loadFile(@"lib/main", @"js");
        main = [NSString stringWithFormat:main, source];

        NSString *html = [NSString stringWithFormat:template, baseDir, hStyle, style, highlight, markdown, main];

        return [html dataUsingEncoding:NSUTF8StringEncoding];
    }
}
