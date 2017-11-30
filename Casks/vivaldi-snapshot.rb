cask 'vivaldi-snapshot' do
  version '1.14.1030.3'
  sha256 'bbb22c6b6a6e60c2ca7293af90b532477a1ff312253feb6492ab4953a3394d91'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '47a07513d9c81fa9257821633cac9a05a24e7bf5e39834e4a97f42f728333ec2'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
