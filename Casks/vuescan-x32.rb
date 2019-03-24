cask 'vuescan-x32' do
  version '9.6.36'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.hamrick.com/files/vuex32#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
