cask :v1 => 'firefox-beta' do
  version '36.0b7'
  sha256 'd9dd3e3c1406ea1aa4f032f4539bc302da164813d8f8d7c778815179eaa1e893'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
