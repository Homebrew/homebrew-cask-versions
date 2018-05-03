cask 'camtwist-beta' do
  version '3.4.1'
  sha256 'c287e03f4bba0484108852a7a1d664498132a801455f97be3c6f37d2e0765428'

  url "http://camtwiststudio.com/beta/CamTwist_#{version}.dmg"
  name 'CamTwist'
  homepage 'http://camtwiststudio.com/'

  depends_on macos: '>= :yosemite'

  pkg 'CamTwist.pkg'

  uninstall script:    { executable: 'Manual Install/CamTwist/uninstall.command' },
            pkgutil:   'com.allocinit.camtwist.*',
            launchctl: 'com.allocinit.camtwist.dal'
end
