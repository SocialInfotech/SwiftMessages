//
//  GalleryTableViewController.swift
//  SwiftMessages
//
//  Created by Timothy Moose on 7/30/16.
//  Copyright © 2016 SwiftKick Mobile LLC. All rights reserved.
//

import UIKit

class GalleryTableViewController: UITableViewController {
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let view = MessageView.viewFromNib(layout: .MessageView)
        view.configureErrorTheme()
        view.configureContent(title: "My Title", body: "This is my message body.")
        var config = Configuration()
        config.presentationContext = .Window(windowLevel: UIWindowLevelStatusBar)
        config.preferredStatusBarStyle = .LightContent
//        config.presentationContext = .Automatic
        config.presentationStyle = .Top
        Manager.sharedManager.add(configuration: config, view: view)
        
//        let view2 = MessageView.instantiate(layout: .StatusLine)
//        view2.configureInfoTheme()
//        view2.configureContent(body: "This is a status line message.")
//        Manager.sharedManager.add(configuration: config, view: view2)
    }
}
