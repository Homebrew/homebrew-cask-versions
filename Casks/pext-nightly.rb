cask 'pext-nightly' do
  version :latest
  sha256 :no_check

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    require 'json'
    base_url = 'https://github.com/Pext/Pext/releases/continuous/'
    latest_version = URI(base_url.to_s)
                       .open
                       .read
                       .scan(%r{href="/.*/Pext\-((?:\d+\.?)+\.\d+\.\w+)\.dmg"})
                       .flatten
                       .last

    "https://github.com/Pext/Pext/releases/download/continuous/Pext-#{latest_version}.dmg"
  end
  name 'Pext'
  homepage 'https://pext.io/'

  conflicts_with cask: 'pext'

  app 'Pext.app'
end
