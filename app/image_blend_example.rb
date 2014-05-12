HERE = File.expand_path(File.dirname(__FILE__))



class ImageBlendExample < NSView
  # include MRGraphics

  def drawRect(rect)
    dimensions = [CGRectGetWidth(rect), CGRectGetHeight(rect)]
    @canvas = RMGraphics::Canvas.for_current_context(:size => dimensions)
      @canvas.background(RMGraphics::Color.white)
      @canvas.font('Skia')
      @canvas.font_size(10)
      # set image width,height
      w, h = [95,95]
      # set initial drawing position
      x, y = [10, @canvas.height - h - 10]
      # load and resize two images
      img_a = RMGraphics::Image.new(File.join(HERE, 'images', 'v2.jpg')).resize(w,h)
      img_b = RMGraphics::Image.new(File.join(HERE, 'images', 'italy.jpg')).resize(w,h)

      # add image B to image A using each blending mode, and draw to canvas
      [:normal,:multiply,:screen,:overlay,:darken,:lighten,
        :colordodge,:colorburn,:softlight,:hardlight,:difference,:exclusion,
        :hue,:saturation,:color,:luminosity,:maximum,:minimum,:add,:atop,
        :in,:out,:over].each do |blendmode|
        img_a.reset.resize(w,h)
        img_a.blend(img_b, blendmode)
        @canvas.draw(img_a,x,y)
        @canvas.text(blendmode, x, y-15)
        x += w + 5
        if (x > @canvas.width - w + 5)
          x = 10
          y -= h + 25
        end
      end
    end

end
