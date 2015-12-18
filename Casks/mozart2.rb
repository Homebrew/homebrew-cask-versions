cask 'mozart2' do
  version '2.0.0'
  sha256 '4f077b0658557e532bfa7519977ce9870c55350a1cb395ef77bcab623c70ee04'

  # sourceforge.net is the official download host per the vendor homepage
  url 'http://downloads.sourceforge.net/sourceforge/mozart-oz/mozart2-2.0.0-alpha.0+build.4116.bdeaf6c-x86_64-darwin.dmg'
  name 'Mozart'
  homepage 'http://mozart.github.io/'
  license :oss

  app 'Mozart2.app'
end
