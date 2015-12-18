cask 'xscope3' do
  version '3.6.3'
  sha256 '1e5e46f50ecd81e35cf819fbd04b2c9726beddc24e86cdd2f6ae5dc60aeb4e4b'

  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'http://iconfactory.com/appcasts/xScope/appcast.xml'
  homepage 'http://iconfactory.com/software/xscope'
  license :commercial

  app 'xScope.app'
end
