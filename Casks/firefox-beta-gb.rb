cask :v1 => 'firefox-beta-gb' do
  version '40.0b2'
  sha256 'a8040975c75e85e7fc93162b4cb0e09c2e4d936380a89da5ba80561f90076024'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
