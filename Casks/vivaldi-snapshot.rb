cask 'vivaldi-snapshot' do
  version '1.3.534.3'
  sha256 'aa3b114e49df7c0a295599f1e3872ade5c588c20f324f1fdaf88551d583bf465'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '4c667fe0b458bdb6b772cfed8f9c367278d49aff05dd1828b489abaabac4a968'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
