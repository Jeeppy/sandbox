class LogLineParser
  attr_reader :log_level, :message

  def initialize(line_message)
    @log_level, @message = line_message.scan(/\[(.*)\]:(.*)/).first
    message.strip!
    log_level.downcase!
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
