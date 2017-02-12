class AlienDetector
  KNOWN_SPACE_INVADERS = ["--o-----o--", "---o---o---", "--ooooooo--", "-oo-ooo-oo-", "ooooooooooo", "o-ooooooo-o", "o-o-----o-o", "---oo-oo---", "---oo---", "--oooo--", "-oooooo-", "oo-oo-oo", "oooooooo", "--o--o--", "-o-oo-o-", "o-o--o-o"]

  def self.detect_aliens(text)
    aliens_found = 0
    text.each do |line|
      KNOWN_SPACE_INVADERS.each do |alien|
        if line.include?(alien)
          aliens_found += 1
        end
      end
    end
    if aliens_found > 0
      return "We've found #{aliens_found} aliens! Run Forrest!"
    else
      return "These are not the aliens you're looking for."
    end
  end
end
