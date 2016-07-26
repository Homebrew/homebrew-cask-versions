cask 'webkit-nightly' do
  version 'r203696'
  sha256 '3a97d1bb589c47e796b4cf77ba50b015f70d04eb54b3e6a93b10896f913016f8'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
