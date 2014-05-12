class CanvasExampleCustomView < NSView

  def drawRect(rect)
    dimensions = [CGRectGetWidth(rect), CGRectGetHeight(rect)]
    @canvas = RMGraphics::Canvas.for_current_context(:size => dimensions)

    @canvas.background(RMGraphics::Color.black)
    white = RMGraphics::Color.white
    @canvas.fill(white)
    @canvas.stroke(0.2)
    @canvas.stroke_width(1)
    @canvas.font("Zapfino")

    80.times do
      @canvas.font_size rand(17)
      @canvas.fill(white.copy.darken(rand(0.8)))
      letters = %W{ g i a n a }
      @canvas.text(letters[rand(letters.size)],
              rand(@canvas.width),
              rand(@canvas.height))
      end
     end
  # end

end
