require 'award'

def update_quality(awards)
  awards.each do |award|
    return award if award.name == "Blue Distinction Plus"
    handle_awards(award)
    end
end

def handle_awards(award)
  case award.name
  when 'Blue First'
    award.blue_first
  when 'Blue Star'
    award.blue_star
  when 'Blue Compare'
    award.blue_compare
  when 'NORMAL ITEM'
    award.normal_item
  end
end 