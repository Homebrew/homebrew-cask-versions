cask 'unity4' do
  version '4.6.4'
  sha256 'd5d840f30d0987b3aef29dc3b651141cb5fb77fc3c28405b5ff667e03b01360a'

  url "http://download.unity3d.com/download_unity/unity-#{version}.dmg"
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end
