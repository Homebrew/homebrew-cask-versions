cask 'cornerstone2' do
  version '2.7.18'
  sha256 'caddc967fa98693d005383d133e79ee20cebc85aabcffe39bbc8c1ac77d51306'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  name 'Cornerstone 2'
  homepage 'https://www.zennaware.com/cornerstone/'

  conflicts_with cask: 'cornerstone'

  app 'Cornerstone.app'
end
