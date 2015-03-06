cask :v1 => 'firefox-beta-uk' do
  version '37.0b2'
  sha256 'ec288a09b514d747826dcd52af50aa9f2c62f3b6960bc0c455eaa147b2dc5c80'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
