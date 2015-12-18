cask 'flux-beta' do
  version :latest
  sha256 :no_check

  url 'https://justgetflux.com/mac/fluxbeta.zip'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end
  
  zap :delete => '~/Library/Preferences/org.herf.Flux.plist'
end
