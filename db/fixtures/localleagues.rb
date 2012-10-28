if LocalLeague.count == 0
  LocalLeague.seed do |s|
    s.name = "Youth"
  end

  LocalLeague.seed do |s|
    s.name = "Adult"
  end

  LocalLeague.seed do |s|
    s.name = "Women's"
  end

  LocalLeague.seed do |s|
    s.name = "None"
  end
end
