class AppDelegate
  def applicationDidFinishLaunching(notification)
    
    buildWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    
    #canvas Example:  
    # @mainWindow.contentView = CustomView.alloc.initWithFrame(@mainWindow.frame)
    
    
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
        
  end
end