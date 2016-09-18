cask 'pastebot' do
  version '2.0 Beta 5'
  sha256 'adf2b84127278850081b3cd886da5137b0d48f26eaec8a38011d812460c68cb9'

  url 'https://tapbots.net/pastebot2/PastebotBeta.zip'
  name 'Pastebot'
  homepage 'http://tapbots.com/pastebot/beta/'
  license :commercial

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Pastebot.app'

  zap delete: [
                '~/Library/Containers/9JTH7AWHE6.com.tapbots.Pastebot2Mac.helper',
                '~/Library/Containers/com.tapbots.Pastebot2Mac',
                '~/Library/Group Containers/9JTH7AWHE6.com.tapbots.Pastebot2Mac',
              ]
end
