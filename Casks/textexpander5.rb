cask 'textexpander5' do
  if MacOS.version <= :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  elsif MacOS.version <= :mavericks
    version '4.3.6'
    sha256 'ec90d6bd2e76bd14c0ca706d255c9673288f406b772e5ae6022e2dbe27848ee9'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  else
    version '5.1.4'
    sha256 'a299cdd809c3a5822375eec18a4644a785d7c442d6357a3a6f141c2e2b92a657'

    url 'http://dl.smilesoftware.com/com.smileonmymac.textexpander/TextExpander.zip'
  end

  name 'TextExpander 5'
  homepage 'https://textexpander.com/textexpander-standalone-apps/'

  auto_updates false
  accessibility_access true
  conflicts_with cask: 'textexpander'

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
