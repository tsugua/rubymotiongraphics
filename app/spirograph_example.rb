

class SpirographExample < NSView
  # include MRGraphics

  def drawRect(rect)
    dimensions = [CGRectGetWidth(rect), CGRectGetHeight(rect)]
    RMGraphics::Canvas.for_current_context(:size => dimensions) do |c|
      c.background(RMGraphics::Color.beige)
      c.fill(RMGraphics::Color.black)
      c.font('Book Antiqua')
      c.font_size(1.2)
      c.translate(200,200)

      # rotate, draw text, repeat
      180.times do |frame|
        c.new_state do
          c.rotate((frame*2) + 120)
          c.translate(70,0)
          c.text('going...', 80, 0)
          c.rotate(frame * 6)
          c.text('Around and', 20, 0)
        end
      end
    end
  end

end
