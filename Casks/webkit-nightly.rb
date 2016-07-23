cask 'webkit-nightly' do
  version 'r203622'
  sha256 '4058f0b27b51ef37f76dba973f42b3c276cbbf620558b14625add15dffb1d83b'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
