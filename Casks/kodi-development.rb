cask 'kodi-development' do
  version '18.0-Leia_alpha2'
  sha256 '94bf58db6144e9037e6aba8ae1f513369c696fb87169f63ac4ec3d9068e05d08'

  url "http://mirrors.kodi.tv/snapshots/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
