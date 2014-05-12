class RandomizeExample < NSView

  def drawRect(rect)
    dimensions = [CGRectGetWidth(rect), CGRectGetHeight(rect)]
    RMGraphics::Canvas.for_current_context(:size => dimensions) do |canvas|
      canvas.background(RMGraphics::Color.white)

      # create a flower shape
      shape = RMGraphics::Path.new
      petals = 5
      petals.times do
        shape.petal(0, 0, 40, 100) # petal at x,y with width,height
        shape.rotate(360 / petals) # rotate by 1/5th
      end

      # randomize shape parameters
      shape.randomize(:fill, RMGraphics::Color.blue.complementary)
      shape.randomize(:stroke, RMGraphics::Color.blue.complementary)
      shape.randomize(:stroke_width, 1.0..10.0)
      shape.randomize(:rotation, 0..360)
      shape.randomize(:scale, 0.5..1.0)
      shape.randomize(:scale_x, 0.5..1.0)
      shape.randomize(:scale_y, 0.5..1.0)
      shape.randomize(:alpha, 0.5..1.0)
      # shape.randomize(:hue, 0.5..0.8)
      shape.randomize(:saturation, 0.0..1.0)
      shape.randomize(:brightness, 0.0..1.0)
      shape.randomize(:x, -100.0..100.0)
      shape.randomize(:y, -100.0..100.0)

      # draw 50 flowers starting at the center of the canvas
      canvas.translate(200, 200)
      canvas.draw(shape, 0, 0, 100)
    end
  end

end
