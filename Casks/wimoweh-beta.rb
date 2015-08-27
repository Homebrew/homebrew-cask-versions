cask :v1 => 'wimoweh-beta' do
  version '1.1.52.BETA'
  sha256 'ab7e8a298a1b8bb5bdfb6e96865eb77cec6391df2292d0f3b8851ca54215c0e1'

  url "https://www.serialangels.co.uk/sa-content/uploads/2015/08/Wimoweh.#{version}_.zip"
  homepage 'http://www.serialangels.co.uk/index.php/wimoweh/'
  license :unknown

  app 'Wimoweh.app'
end
