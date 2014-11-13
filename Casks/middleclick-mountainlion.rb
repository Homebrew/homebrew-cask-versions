cask :v1 => 'middleclick-mountainlion' do
  version :latest
  sha256 :no_check

  url 'http://clement.beffa.org/labs/downloads/MiddleClick_ml.zip'
  homepage 'http://clement.beffa.org/labs/projects/middleclick'
  license :unknown

  app 'MiddleClick.app'
end
