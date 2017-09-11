cask 'vivaldi-snapshot' do
  version '1.12.955.3'
  sha256 '9c728bbb6b6325ba5cfc18938bbb60ed2fbea7f7126827069e6157d1aff9891b'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '919e94b02624625df4f8e96e9962c2fcbfa0f26d9f21094760c128607bc27452'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
