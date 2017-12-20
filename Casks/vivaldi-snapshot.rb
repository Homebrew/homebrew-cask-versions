cask 'vivaldi-snapshot' do
  version '1.14.1047.3'
  sha256 '558c9e3c3f2639a9dbdb49b19fed4bcd4b6f95772848505dc568f3451b24660a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '482ef48777f4dd331edbe4a3ab9a885e828c13d4c373ab03da553d3cda90e1ba'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
