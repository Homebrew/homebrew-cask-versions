cask 'kodi-development' do
  version '17.0-Krypton_rc3'
  sha256 '6f6ef8166ef2ad59c0e4bfd2d1396b9c293c6a029424eb577faf3b70b752a272'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
