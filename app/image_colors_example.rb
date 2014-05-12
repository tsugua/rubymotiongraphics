HERE = File.expand_path(File.dirname(__FILE__))



class ImageColorsExample < NSView

  def drawRect(rect)
    @canvas = RMGraphics::Canvas.for_current_context(:size => [CGRectGetWidth(rect), CGRectGetHeight(rect)])
      @canvas.background(RMGraphics::Color.white)
      @canvas.font('Skia')
      @canvas.font_size(1.4)
      @canvas.fill(RMGraphics::Color.black)

      # load image
      img     = RMGraphics::Image.new(File.join(HERE, 'images', 'v2.jpg'))
      w,h     = [100,100]
      x,y     = [10,290]
      x_offset = 105
      y_offset = 130

      # original image, resized to fit within w,h:
      img.fit(w,h)
      @canvas.draw(img,x,y)
      @canvas.text("original",x,y-15)
      x += x_offset

      # HUE: rotate color wheel by degrees
      img.reset.fit(w,h)
      img.hue(45)
      @canvas.draw(img,x,y)
      @canvas.text("hue",x,y-15)
      x += x_offset

      # EXPOSURE: increase/decrease exposure by f-stops
      img.reset.fit(w,h)
      img.exposure(1.0)
      @canvas.draw(img,x,y)
      @canvas.text("exposure",x,y-15)
      x += x_offset

      # SATURATION: adjust saturation by multiplier
      img.reset.fit(w,h)
      img.saturation(2.0)
      @canvas.draw(img,x,y)
      @canvas.text("saturation",x,y-15)
      x += x_offset

      # (go to next row)
      x = 10
      y -= y_offset

      # CONTRAST: adjust contrast by multiplier
      img.reset.fit(w,h)
      img.contrast(2.0)
      @canvas.draw(img,x,y)
      @canvas.text("contrast",x,y-15)
      x += x_offset

      # BRIGHTNESS: adjust brightness
      img.reset.fit(w,h)
      img.brightness(0.5)
      @canvas.draw(img,x,y)
      @canvas.text("brightness",x,y-15)
      x += x_offset

      # MONOCHROME: convert to a monochrome image
      img.reset.fit(w,h)
      img.monochrome(RMGraphics::Color.orange)
      @canvas.draw(img,x,y)
      @canvas.text("monochrome",x,y-15)
      x += x_offset

      # WHITEPOINT: remap the white point
      img.reset.fit(w,h)
      img.whitepoint(RMGraphics::Color.white.ish)
      @canvas.draw(img,x,y)
      @canvas.text("white point",x,y-15)
      x += x_offset

      # (go to next row)
      x = 10
      y -= y_offset

      # CHAINING: apply multiple effects at once
      img.reset.fit(w,h)
      img.hue(60).saturation(2.0).contrast(2.5)
      @canvas.draw(img,x,y)
      @canvas.text("multi effects",x,y-15)
      x += x_offset

      # COLORS: sample random colors from the image and render as a gradient
      img.reset.fit(w,h) # reset the image and scale to fit within w,h
      colors = img.colors(10).sort! # select 10 random colors and sort by brightness
      # gradient
      gradient = RMGraphics::Gradient.new(colors) # create a new gradient using the selected colors
      rect = RMGraphics::Path.new.rect(x,y,img.width,img.height) # create a rectangle the size of the image
      @canvas.begin_clip(rect) # begin clipping so the gradient will only fill the rectangle
      @canvas.gradient(gradient,x,y,x+img.width,y+img.height) # draw the gradient between opposite corners of the rectangle
      @canvas.end_clip # end clipping so we can draw on the rest of the canvas
      @canvas.text("get colors",x,y-15) # add text label
      x += x_offset
    end

end
