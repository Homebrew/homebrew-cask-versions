cask 'vivaldi-snapshot' do
  version '1.6.689.29'
  sha256 '13c1c166b9c6ec4edba22a83e8fbc52fc7b0fa9a5e426f973ba6035726056166'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'a91886da0c6261467883dfd0afca3a1d7c30d30e27d30e4f05b4213c8633d795'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
