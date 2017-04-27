def get_first_name_of_season_winner(data, season)
  data[season].each do |x|
    if x["status"] == "Winner"
      return x["name"].partition(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, value|
    data[season].each do |x|
      if x["occupation"] == occupation
        return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, value|
    data[season].each do |x|
      if x["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, value|
    data[season].each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |x|
    ages << x["age"].to_i
  end
  average = ages.inject{ |sum, el| sum + el }.to_f / ages.size
  average.round
end
