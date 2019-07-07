#!/usr/bin/swift

import Cocoa
import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")

        window.contentView = NSHostingView(rootView: ContentView())

        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}

let appDelegate = AppDelegate()
NSApplication.shared.delegate = appDelegate

NSApplication.shared.run()
