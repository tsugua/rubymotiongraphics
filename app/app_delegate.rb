class AppDelegate
  def applicationDidFinishLaunching(notification)
    p RMGraphics.TEST
    buildWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[0, 0], [400, 400]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    
    @mainWindow.center
    #canvas Example:  
    @mainWindow.contentView = CustomView.alloc.initWithFrame(@mainWindow.frame)
    
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
        
  end
end