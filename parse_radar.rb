@file = "radar_image.txt"

KNOWN_SPACE_INVADERS = ["--o-----o--", "---o---o---", "--ooooooo--", "-oo-ooo-oo-", "ooooooooooo", "o-ooooooo-o", "o-o-----o-o", "---oo-oo---", "---oo---", "--oooo--", "-oooooo-", "oo-oo-oo", "oooooooo", "--o--o--", "-o-oo-o-", "o-o--o-o"]

aliens_found = 0
File.open(@file).each do |line|
  KNOWN_SPACE_INVADERS.each do |alien|
    if line.include?(alien)
      aliens_found += 1
    end
  end
end
puts "We've found #{aliens_found} aliens! Amazing!"