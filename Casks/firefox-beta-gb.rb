cask :v1 => 'firefox-beta-gb' do
  version '36.0b1'
  sha256 '8ef105c26f697895901a58b6a212b5390648704e9b1a4b0108473cdc12da7da0'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
