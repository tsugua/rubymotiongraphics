class AppDelegate
  def applicationDidFinishLaunching(notification)
    
    p RMGraphics::TEST
    # p RMGraphics::Colormethods?
    buildWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
  
    @mainWindow.contentView = CustomView.alloc.initWithFrame(@mainWindow.frame)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end
end