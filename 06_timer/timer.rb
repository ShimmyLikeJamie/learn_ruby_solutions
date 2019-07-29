class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds= set_seconds
    @seconds = set_seconds
  end

  def time_string
    hours = @seconds/3600
    minutes = (@seconds - (hours*3600))/60
    seconds = (@seconds - (hours*3600) - (minutes*60))
    string = ""

    if hours < 10
      string += "0"
    end
    string += "#{hours}" + ":"

    if minutes < 10
      string += "0"
    end
    string += "#{minutes}" + ":"

    if seconds < 10
      string += "0"
    end
    string += "#{seconds}"
    
    return string
  end
end


