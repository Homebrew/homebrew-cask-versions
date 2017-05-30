cask 'vivaldi-snapshot' do
  version '1.10.856.16'
  sha256 '2b855a9f110d025a7a5e9d7c3ef3e4380e3ad0bebd9d1cc8ee49dd6bd4f0fdd9'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '6c7a2a11ce539a03dc3c623c500c7894b04f364df1ac70c572e300be15b1c7f2'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
