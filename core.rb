
class Pet

  def status(parameters:)
    status = []
    parameters = parameters
    parameters.each do |element|
      element <= 0 ? status.append('DEAD') : status.append('ALIVE')
    end
    parameters.each do |element|
      element >= 20 ? status.append('MONSTER') : status.append('ALIVE')
    end
    if status.include? 'DEAD'
      verdict = 'DEAD'
    elsif status.include? 'MONSTER'
      verdict = 'MONSTER'
    else
      verdict = 'ALIVE'
    end
    verdict
  end

  def actions(care: false, feed: false, play: false, clear: false, indicators:)
    indicators = indicators
    if care
      indicators[0] += 1
      indicators[1] += 1
      indicators[2] -= 1
      indicators[3] += 1
    elsif feed
      indicators[0] += 1
      indicators[1] -= 1
      indicators[2] -= 1
      indicators[3] -= 1
    elsif play
      indicators[0] -= 1
      indicators[1] += 1
      indicators[2] -= 1
      indicators[3] -= 1
    elsif clear
      indicators[0] += 1
      indicators[1] += 1
      indicators[2] -= 1
      indicators[3] += 1
    end
    indicators
  end
end

# a = Pet.new.actions(clear: true, indicators: [5, -6, 5, 0])
# puts Pet.new.status(parameters: a)
