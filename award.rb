class Award 
    attr_accessor :expires_in, :quality

    def initialize(expires_in, quality) 
        @expires_in = expires_in
        @quality = quality
    end

    def update_quality
        if self.quality > 0
            self.quality -= 1
        end

        self.expires_in -= 1

        if self.expires_in < 0 && self.quality > 0
            self.quality -=1
        end
    end 
  end

class BlueDistinctionPlus < Award
  def update_quality
    # don't need to update quality since it's always fixed at 80
  end 
end