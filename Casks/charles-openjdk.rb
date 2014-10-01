class CharlesOpenjdk < Cask
  version '3.9.2'
  sha256 '40e34c96ff6fff028031865b56d158225f17bf0758f4a2e7d0d28c92fb30504e'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}-openjdk.dmg"
  homepage 'http://www.charlesproxy.com/'
  license :unknown

  app 'Charles.app'
end
