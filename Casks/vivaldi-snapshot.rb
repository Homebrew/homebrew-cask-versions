cask 'vivaldi-snapshot' do
  version '1.15.1090.3'
  sha256 '9e4c66a61da12d850d785f6e7c07fe2dd52d005c7fff219f57ff08e8d86b5f06'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'a79e655079a18df612220284cc3aec92522211e9fc811bdac4477b116806e65a'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
