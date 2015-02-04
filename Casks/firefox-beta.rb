cask :v1 => 'firefox-beta' do
  version '36.0b6'
  sha256 'c555ce7cab4f555d4b7436e4c8cdc4ee1552d17a1918c1ef500b2235a476686f'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
