cask 'vivaldi-snapshot' do
  version '1.9.818.25'
  sha256 'b0721a8ef444fcc6367aae72ac796907c6ff9bab93228b8f4393c57ce298ee12'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '7e5a4fc16b44e72f4645f94d9709a7126f0b4e68ca2c49398862bc9258382f5e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
