require 'award'

def update_quality(awards)
  awards.each do |award|
    case award.name
    when 'Blue Distinction Plus'
      handle_blue_distinction_plus(award)
    when 'Blue Star'
      handle_blue_star(award)
    when 'Blue First'
      handle_blue_first(award)
    when 'Blue Compare'
      handle_blue_compare(award)
    else
      handle_normal(award)
    end
  end
end

# quality is at 80 and never alters
def handle_blue_distinction_plus(award)
  award.quality = 80
end 