cask 'unity523' do
  version '5.2.3f1'
  sha256 'a2cf141409078a8e1934a0dede357578580e318c21275696b57346acbcbd284c'

  url "http://download.unity3d.com/download_unity/f3d16a1fa2dd/MacEditorInstaller/Unity-#{version}.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg "Unity-#{version}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
