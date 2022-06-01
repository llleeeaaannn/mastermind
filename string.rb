class String

  def bg(color)
    case color
    when "red"
      "\e[41m#{self}\e[0m"
    when "green"
      "\e[42m#{self}\e[0m"
    when "blue"
      "\e[44m#{self}\e[0m"
    when "purple"
      "\e[45m#{self}\e[0m"
    when "cyan"
      "\e[46m#{self}\e[0m"
    when "yellow"
      "\e[103m#{self}\e[0m"
    end
  end

end
