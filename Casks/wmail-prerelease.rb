cask 'wmail-prerelease' do
  version '2.2.1'
  sha256 'e2e8ecdbe7e6b4b5526f4ff932296a47b9cc30adc33fd3e1ac2b26bae27b13c8'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_prerelease_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '1287488a9a4d771b86ecb667eef9b44eb0a50a558ccfcc9fb8e76c137c73e2bd'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  conflicts_with cask: 'wmail'

  app 'WMail.app'
end
