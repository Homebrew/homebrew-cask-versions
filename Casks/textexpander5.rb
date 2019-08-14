cask 'textexpander5' do
  version '5.1.4'
  sha256 'a299cdd809c3a5822375eec18a4644a785d7c442d6357a3a6f141c2e2b92a657'

  # dl.smilesoftware.com/com.smileonmymac.textexpander was verified as official when first introduced to the cask
  url 'https://dl.smilesoftware.com/com.smileonmymac.textexpander/TextExpander.zip'
  name 'TextExpander'
  homepage 'https://textexpander.com/textexpander-standalone-apps/'

  conflicts_with cask: 'textexpander'

  app 'TextExpander.app'

  zap trash: '~/Library/Application Support/TextExpander/'
end
