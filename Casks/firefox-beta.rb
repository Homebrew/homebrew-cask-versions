cask :v1 => 'firefox-beta' do
  version '36.0b1'
  sha256 'cc6dca831359d8cdb855d26c41850ae3c0f9b19db7567f3fedcec146d63fc628'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
