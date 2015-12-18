cask 'textexpander3' do
  version '3.4.2'
  sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'

  url "http://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  name 'TextExpander'
  homepage 'http://www.smilesoftware.com/TextExpander/index.html'
  license :commercial

  app 'TextExpander.app'

  zap :delete => '~/Library/Application Support/TextExpander/'
end
