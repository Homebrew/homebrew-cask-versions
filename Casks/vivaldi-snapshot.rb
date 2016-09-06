cask 'vivaldi-snapshot' do
  version '1.4.589.4'
  sha256 '74c20cff592773f2f20006b17e5b90538350d31630a1d18fc3644993f6188240'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '546fc0f2fefbc88fdb2b51519920b0477b69be38d9a48b9ca17c84adaa26024e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
