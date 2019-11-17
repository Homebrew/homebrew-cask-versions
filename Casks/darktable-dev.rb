cask 'darktable-dev' do
  version '3.0.0rc1'
  sha256 'fcec1f254b1313904778f0e5a4dc651a753429acc43756a292aee5469a2e6490'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  app 'darktable.app'
end
