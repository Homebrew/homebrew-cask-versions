cask 'omnigraffle6' do
  version '6.6.2'
  sha256 'f0b05a654686c42703cddef646a2519235b45d26bd06988a6e644aa96c0eb828'

  url "http://downloads.omnigroup.com/software/MacOSX/10.10/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle 6'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  app 'OmniGraffle.app'
end
