cask :v1 => 'flux-beta' do
  version :latest
  sha256 :no_check

  url 'https://justgetflux.com/mac/fluxbeta.zip'
  homepage 'https://justgetflux.com/'
  license :unknown

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end
end
