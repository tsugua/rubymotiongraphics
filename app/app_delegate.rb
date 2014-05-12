 class AppDelegate

  attr_reader :app, :window, :frame

  def applicationDidFinishLaunching(notification)
    # buildMenurak
    buildWindow
  end

  def buildWindow
    @app = NSApplication.sharedApplication
    @app.delegate = AppDelegate.new
    # @frame  = [0.0, 0.0, width,height]

    @window = NSWindow.alloc.initWithContentRect([[240, 180], [800, 600]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @window.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @window.delegate = app.delegate



    #Each of these windows contains one example. Uncomment them one at a time.
    @window.contentView = CanvasExampleCustomView.alloc.initWithFrame(@window.frame) #Works
    # @window.contentView = ColorSamplerCustomView.alloc.initWithFrame(@window.frame) #works
    # @window.contentView = DrawingIterateExample.alloc.initWithFrame(@window.frame) #works
    # @window.contentView = ImageBlendExample.alloc.initWithFrame(@window.frame) #font issues
    # @window.contentView = ImageColorsExample.alloc.initWithFrame(@window.frame) #font issues
    # @window.contentView = ImageEffectExample.alloc.initWithFrame(@window.frame) #Font Issues
    # @window.contentView = ImageSizeManipulation.alloc.initWithFrame(@window.frame) #Font Issues
    # @window.contentView = ParticleExample.alloc.initWithFrame(@window.frame) #Font Issues
    # @window.contentView = RandomizeExample.alloc.initWithFrame(@window.frame) #Font issues
    # @window.contentView = RopeHairExample.alloc.initWithFrame(@window.frame) #works
    # @window.contentView = RopeRubbonExample.alloc.initWithFrame(@window.frame) #works
    # @window.contentView = SpirographExample.alloc.initWithFrame(@window.frame) #Font Issues


    @window.orderFrontRegardless

  end
end
