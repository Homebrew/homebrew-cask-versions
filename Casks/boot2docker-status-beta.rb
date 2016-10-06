cask 'boot2docker-status-beta' do
  version '1.1.0.beta2'
  sha256 'ce16ce45def874edacc719ff5ef6b79655011adbb3284da13bc3fef7e09dbcd2'

  # github.com/nickgartmann/boot2docker-status was verified as official when first introduced to the cask
  url "https://github.com/nickgartmann/boot2docker-status/releases/download/#{version.major_minor_patch}/Boot2Docker.Status-v#{version}.zip"
  appcast 'https://github.com/nickgartmann/boot2docker-status/releases.atom',
          checkpoint: 'e399bad2bf54114275f4dbce07312b54338baca54d8489326405130501a02a0e'
  name 'Boot2Docker Status'
  homepage 'http://boot2docker-status.nickgartmann.com'

  app 'Boot2Docker Status.app'

  uninstall quit: 'RokkinCat.Boot2Docker-Status'
end
