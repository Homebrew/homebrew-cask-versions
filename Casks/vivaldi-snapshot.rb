cask 'vivaldi-snapshot' do
  version '1.6.689.32'
  sha256 '979120b0c09f085490269a7b5715421ae57bfef9d819599a222d7ee095283936'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '6ed839ec17f8facb6b6b3e0e01df0ee6bcede9e3fed255f59a6e9dfac3f26163'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
