cask 'omnioutliner-professional3' do
  version '3.10.6'
  sha256 'ec8ee1ec00870a1cc5920d2e899cd255eef6564c8e9944eadfdf5297f1cb348e'

  url "http://www.omnigroup.com/ftp/pub/software/MacOSX/10.4/OmniOutlinerPro-#{version}.dmg"
  homepage 'http://www.omnigroup.com/omnioutliner/'
  license :closed

  app 'OmniOutliner Professional.app'
end
