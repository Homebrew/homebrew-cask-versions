cask 'insync-beta' do
  version '1.4.5.37069'
  sha256 '3d0f63d709b65ff44fc32aae34a2456809ac2e53ed9f4e1effbe35ab5b5dce5f'

  # d2t3ff60b2tol4.cloudfront.net/builds was verified as official when first introduced to the cask
  url "https://d2t3ff60b2tol4.cloudfront.net/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://forums.insynchq.com/'

  conflicts_with cask: 'insync'

  app 'Insync.app'
end
