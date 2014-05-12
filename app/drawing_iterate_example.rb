class DrawingIterateExample < NSView

  def drawRect(rect)
    dimensions = [CGRectGetWidth(rect), CGRectGetHeight(rect)]
    @canvas = RMGraphics::Canvas.for_current_context(:size => dimensions)
      @canvas.background(RMGraphics::Color.white)

      # create a petal shape with base at (0,0), size 40×150, and bulge at 30px
      shape = RMGraphics::Path.new
      shape.petal(0,0,40,150,30)
      # add a circle
      shape.oval(-10,20,20,20)
      # color it red
      shape.fill(RMGraphics::Color.red)

      # increment shape parameters by the specified amount each iteration,
      # or by a random value selected from the specified range
      shape.increment(:rotation, 5.0)
      shape.increment(:scale_x, 0.99)
      shape.increment(:scale_y, 0.96)
      shape.increment(:x, 10.0)
      shape.increment(:y, 12.0)
      shape.increment(:hue,-0.02..0.02)
      shape.increment(:saturation, -0.1..0.1)
      shape.increment(:brightness, -0.1..0.1)
      shape.increment(:alpha, -0.1..0.1)

      # draw 200 petals on the canvas starting at location 50,200
      @canvas.translate(50,220)
      @canvas.draw(shape,0,0,200)
    end

end
