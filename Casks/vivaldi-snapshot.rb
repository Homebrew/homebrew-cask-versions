cask 'vivaldi-snapshot' do
  version '1.1.453.6'
  sha256 'f81efa66f259f180c537fb8877291b561c336cff941d20c509b9cf65658f0668'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c265189af88a1b72a968d365fe5d2947f9f399ce7ffc4d771ae013301f8be433'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
