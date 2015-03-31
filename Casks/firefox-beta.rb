cask :v1 => 'firefox-beta' do
  version '37.0b7'
  sha256 '37fc15df174ad79d4e9f67529ab015a0a6d69ffd652f518a59744937262cde95'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
