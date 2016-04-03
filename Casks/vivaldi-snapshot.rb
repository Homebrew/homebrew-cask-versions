cask 'vivaldi-snapshot' do
  version '1.0.435.26'
  sha256 '24f69b8918bfe89f7281a436cd38bb7c48ec08ad4b0d9f7cc33b807bd7f10890'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '61451d827d6dab7490dc91bb5434dc283fc21b84555c2e50c3bf5bc72e8ceb59'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
