cask 'flux-beta' do
  version '39.93'
  sha256 'b182d321956cb540bb7fa6d3357817981c5d45ab103a56ece7fd5582d879b1ce'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: 'f6127c732fe64848139f952b0ff08dcd4ba97f1a58d6599857d6268ad035b5ec'
  name 'f.lux'
  homepage 'https://justgetflux.com/'

  auto_updates true

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Flux'

  zap delete: [
                '~/Library/Preferences/org.herf.Flux.plist',
                '~/Library/Caches/org.herf.Flux',
              ]
end
