cask :v1 => 'vivaldi-snapshot' do
  version '1.0.303.48'
  sha256 'a269540666b12d8dac3c870346f2b9009bb616f3c89450b816b5935a957b8eb6'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'a2ac38ba7eda74648421f282e8f0a834ffa2686e09675c79807ac42a10b2a934'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
