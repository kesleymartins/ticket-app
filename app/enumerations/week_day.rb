class WeekDay < EnumerateIt::Base
  associate_values(:monday, :tuesday, :wednesday, :thursday, :friday)
end
