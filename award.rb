Award = Struct.new(:name, :expires_in, :quality) do
  def blue_distinction_plus
    self
  end 

  def normal_item
      if self.expires_in > 1 && self.quality > 0
          self.quality -= 1
      elsif self.expires_in <= 1 && self.quality > 0
          self.quality -= 2
      end
      self.expires_in -=1
      self
  end

  def blue_first
      if self.expires_in > 1 && self.quality != 50
          self.quality += 1
      elsif self.expires_in <= 0 && self.quality != 50
          self.quality += 2
      end
      self.quality = 50 if self.quality > 50
      self.expires_in -=1
      self
  end

  def blue_compare
      if self.expires_in > 10
          self.quality += 1
      elsif self.expires_in > 5 && self.expires_in < 11
          self.quality += 2
      elsif self.expires_in > 0 && self.expires_in < 6
          self.quality += 3
      end
      self.quality = 50 if self.quality > 50
      self.quality = 0 if self.expires_in <= 0
      self.expires_in -= 1
      self
  end

  def blue_star
      self.expires_in > 1 ? self.quality -= 2 : self.quality -= 4
      self.quality = 0 if self.quality < 0
      self.expires_in -= 1
      self
  end

end 