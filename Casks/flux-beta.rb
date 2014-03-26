class FluxBeta < Cask
  url 'https://justgetflux.com/mac/fluxbeta.zip'
  homepage 'https://justgetflux.com/'
  version 'latest'
  no_checksum
  link 'Flux.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'org.herf.Flux', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
