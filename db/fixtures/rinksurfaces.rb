if Surface.count == 0
  Surface.seed do |s|
    s.name = "Ice"
  end

  Surface.seed do |s|
    s.name = "Deck"
  end

  Surface.seed do |s|
    s.name = "Synthetic Ice"
  end

  Surface.seed do |s|
    s.name = "Other"
  end
end
