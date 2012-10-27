if DevelopmentalProgram.count == 0
  DevelopmentalProgram.seed do |s|
    s.display = "Youth"
    s.value = "youth"
  end

  DevelopmentalProgram.seed do |s|
    s.display = "Adult"
    s.value = "adult"
  end

  DevelopmentalProgram.seed do |s|
    s.display = "None"
    s.value = "none"
  end
end
