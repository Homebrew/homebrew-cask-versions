cask :v1 => 'omnioutliner3' do
  version :latest
  sha256 :no_check

  url 'http://omnigroup.com/download/latest/omnioutliner-3'
  homepage 'http://www.omnigroup.com/omnioutliner/'
  license :closed

  app 'OmniOutliner.app'
end
