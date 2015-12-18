cask 'wimoweh-beta' do
  version '1.1.54.BETA'
  sha256 '7867b5601dbe39c1038eeffc812343f9f4908596475d52b0b38a1d1212e019a7'

  url "https://www.serialangels.co.uk/sa-content/uploads/2015/08/Wimoweh.#{version}_.zip"
  homepage 'http://www.serialangels.co.uk/index.php/wimoweh/'
  license :unknown

  app 'Wimoweh.app'
end
