require_relative '../alien_detector'

describe AlienDetector do
  it 'counts all the correct aliens' do
    response = AlienDetector.detect_aliens(File.open("fixtures/radar_image.txt"))
    expect(response).to eq("We've found 112 aliens! Run Forrest!")
  end
  it 'counts all the correct Space Invaders' do
    response = AlienDetector.detect_aliens(File.open("fixtures/no_invaders.txt"))
    expect(response).to eq("These are not the aliens you're looking for.")
  end
end
