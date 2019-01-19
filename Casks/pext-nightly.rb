cask 'pext-nightly' do
  version :latest
  sha256 :no_check

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    base_url = 'https://github.com/Pext/Pext/releases/continuous/'
    versions = URI(base_url.to_s)
               .open
               .read
               .scan(%r{href="/.*/Pext\-((?:\d+\.?)+\.\d+\.\w+)\.dmg"})
               .flatten

    latest_version = versions.last

    file = "Pext-#{latest_version}.dmg"

    "https://github.com/Pext/Pext/releases/download/continuous/#{file}"
  end
  name 'Pext'
  homepage 'https://pext.io/'

  conflicts_with cask: [
                         'pext',
                       ]

  app 'Pext.app'
end
