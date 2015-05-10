cask :v1 => 'adium-beta' do
  version '1.5.11b2'
  sha256 'e7690718f14defa3bc08cd3949a4eab52e942abd47f7ac2ce7157ed7295658c6'

  url "https://adiumx.cachefly.net/Adium_#{version}.dmg"
  homepage 'https://beta.adium.im/'
  license :oss

  app 'Adium.app'
end
