cask 'wimoweh-beta' do
  version '1.1.58.BETA'
  sha256 '4c8bd162b78e85018583e46b94eaa81b66d46668918f96fc1049d9bad580fd49'

  url "https://www.serialangels.co.uk/sa-content/uploads/2016/04/Wimoweh.#{version}_.zip"
  name 'Wimoweh'
  homepage 'http://www.serialangels.co.uk/index.php/wimoweh/'

  app 'Wimoweh.app'
end
