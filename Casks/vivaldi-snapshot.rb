cask 'vivaldi-snapshot' do
  version '1.12.955.20'
  sha256 '1cecb3905632fcb733ed72e311e77bc6bc1e973b1f00279d1887ca0d0d5038f2'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '510700dcab3c812237c444c991525c60d851315efeab20dce0c5ac3e9d10b00f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
