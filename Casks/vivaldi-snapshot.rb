cask 'vivaldi-snapshot' do
  version '1.13.1008.21'
  sha256 '6eaba395f525413ff8434267e60c2d5ebf9b911677467275c52238183496f62f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'ccf3f17841e04d411a14b8d1e174a6aaacb10115796deef25cb30d46b8f71f9b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
