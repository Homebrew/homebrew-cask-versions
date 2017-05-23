cask 'royal-tsx-beta' do
  version '3.1.4.10'
  sha256 '02c77059cacb96770ef7bf2215e39ce24b3acc74ac4d1b707aa6a4317c6cc4d5'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '61f0c1b9ab8818353b37bca1153c5b0f4ea70e7c268a0708186a736c2b8f037a'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
