cask :v1 => 'xscope3' do
  version '3.6.3'
  sha256 '1e5e46f50ecd81e35cf819fbd04b2c9726beddc24e86cdd2f6ae5dc60aeb4e4b'

  url 'https://iconfactory.com/assets/software/xscope/xScope-3.6.3.zip'
  appcast 'http://iconfactory.com/appcasts/xScope/appcast.xml'
  homepage 'http://iconfactory.com/software/xscope'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'xScope.app'
end
