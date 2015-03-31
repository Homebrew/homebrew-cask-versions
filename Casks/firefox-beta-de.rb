cask :v1 => 'firefox-beta-de' do
  version '37.0b7'
  sha256 '46e8a9fd86f5a37a7f5a01e2fd4ccc46174403f007215e3ac0eeef5ddca9127b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
