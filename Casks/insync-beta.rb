cask 'insync-beta' do
  version '1.4.1.37037'
  sha256 '0fca8d6b3240406608141e480f4238d41f6ddab75cbf8d53e1591d128068052f'

  # d2t3ff60b2tol4.cloudfront.net/builds/Insync was verified as official when first introduced to the cask
  url "https://d2t3ff60b2tol4.cloudfront.net/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  conflicts_with cask: 'insync'

  app 'Insync.app'
end
