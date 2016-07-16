cask 'webkit-nightly' do
  version 'r203276'
  sha256 'a930b9684d0d2ec821af34b0af968415d17be203c9f7e07764899f823b19e26f'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
