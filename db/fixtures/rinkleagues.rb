if RinkLeague.count == 0
  RinkLeague.seed do |s|
    s.display = "Youth"
    s.value = "youth"
  end

  RinkLeague.seed do |s|
    s.display = "Adult"
    s.value = "adult"
  end

  RinkLeague.seed do |s|
    s.display = "Women's"
    s.value = "womens"
  end

  RinkLeague.seed do |s|
    s.display = "None"
    s.value = "none"
  end
end
