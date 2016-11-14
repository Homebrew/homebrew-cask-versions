cask 'omnigraffle6' do
  version '6.6.1'
  sha256 '7671d46ccd0b53a5917b0ccba5971fe1f1d7990b2d636f25c941b11b03c6e23c'

  url "http://downloads.omnigroup.com/software/MacOSX/10.10/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle 6'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  app 'OmniGraffle.app'
end
