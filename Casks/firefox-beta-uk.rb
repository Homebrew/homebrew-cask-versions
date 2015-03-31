cask :v1 => 'firefox-beta-uk' do
  version '37.0b7'
  sha256 '7b75f3e583f5b244a09750afb27b0d1cc9f6771c2066f59f959f8d7cf58b3b4a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
