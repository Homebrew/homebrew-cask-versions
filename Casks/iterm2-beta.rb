cask :v1 => 'iterm2-beta' do
  version '2.0.0.20150412'
  sha256 '8f1d2ecb24ee5c42cb6d83408ccd955207ad0daabd7b11199ce92decdeb07528'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_0_0_20150412.zip'
  homepage 'http://www.iterm2.com/'
  license :oss

  app 'iTerm.app'
end
