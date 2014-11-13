cask :v1 => 'iterm2-beta' do
  version '2.0.0.20141103'
  sha256 'c2f4e725f7e519d5284fc3787ede77acf7217ae424b3d62234bb1054c78dab69'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_0_0_20141103.zip'
  homepage 'http://www.iterm2.com/'
  license :oss

  app 'iTerm.app'
end
