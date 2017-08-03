def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasonKey, info|
    if seasonKey == season
    info.each do |people|
      people.each do |key, value|
        if key == "status" && value == "Winner"
          fullName = people.fetch("name")
          fullName = fullName.split
          return fullName[0]
        end
      end
    end
  end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasonKey, info|
    info.each do |people|
      people.each do |key, value|
        if key == "occupation" && value == occupation
          return people.fetch("name")
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seasonKey, info|
    info.each do |people|
      people.each do |key, value|
        if key == "hometown" && value == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasonKey, info|
    info.each do |people|
      people.each do |key, value|
        if key == "hometown" && value == hometown
          return people.fetch("occupation")
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  totalAge = 0
  counter = 0
  data.each do |seasonKey, info|
    if seasonKey == season
    info.each do |people|
      people.each do |key, value|
        if key == "age"
          puts value
          totalAge = totalAge + value.to_i
          counter += 1
        end
      end
    end
  end
end
averageAge = totalAge.to_f / counter
  return averageAge.round
end
