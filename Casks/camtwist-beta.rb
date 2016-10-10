cask 'camtwist-beta' do
  version '3.1'
  sha256 'ecd19d1f3c126d5397ed4f0a5de53920a2b27baab47acc06754632ebc6e7c545'

  url "http://camtwiststudio.com/beta/CamTwist_#{version}.dmg"
  name 'CamTwist'
  homepage 'http://camtwiststudio.com/'

  depends_on macos: '>= 10.10'

  pkg 'CamTwist.pkg'

  uninstall script:  { executable: 'Manual Install/CamTwist/uninstall.command' },
            pkgutil: 'com.allocinit.camtwist.*'
end
