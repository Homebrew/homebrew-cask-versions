class FluxBeta < Cask
  url 'https://justgetflux.com/mac/fluxbeta.zip'
  homepage 'http://justgetflux.com/news/pages/mac/'
  version '28.0'
  no_checksum
  link 'Flux.app'

  after_install do
    system '/usr/bin/defaults', 'write', 'org.herf.Flux', \
      'moveToApplicationsFolderAlertSuppress', '-boolean', 'true'
  end
end
