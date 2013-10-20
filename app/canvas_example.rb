class CustomView < NSView

  def drawRect(rect)
    dimensions = [CGRectGetWidth(rect), CGRectGetHeight(rect)]
    RMGraphics::Canvas.for_current_context(:size => dimensions) do |c|
      c.background(RMGraphics::Color.black)
      white = RMGraphics::Color.white
      c.fill(white)
      c.stroke(0.2)
      c.stroke_width(1)   
      c.font("Zapfino")

      80.times do 
        c.font_size rand(170)
        c.fill(white.copy.darken(rand(0.8)))
        letters = %W{ g i a n a } 
        c.text(letters[rand(letters.size)],
                rand(c.width),
                rand(c.height))
      end
    end
  end
  
end