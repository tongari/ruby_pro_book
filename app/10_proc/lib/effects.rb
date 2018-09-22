module Effects
  def self.reverse
    -> (words) {
      words.split(' ').map(&:reverse).join(' ')
    }
  end

  def self.echo(rate)
    -> (words) {
      words.chars.map { |char| char == ' ' ? char : char * rate }.join
    }
  end

  def self.loud(rate)
    -> (words) {
      words.split(' ').map{ |word|
        word.upcase + "!" * rate
      }.join(' ')
    }
  end

end

