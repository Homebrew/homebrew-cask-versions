cask 'google-chrome-beta' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/chrome/mac/beta/googlechrome.dmg'
  name 'Google Chrome'
  homepage 'https://www.google.com/chrome/browser/beta.html?platform=mac&extra=betachannel'
  license :gratis

  app 'Google Chrome.app'

  zap delete: [
                '~/Library/Application Support/Google/Chrome',
                '~/Library/Caches/Google/Chrome',
                '~/Library/Caches/com.google.Chrome',
                '~/Library/Caches/com.google.Chrome.helper.EH',
                '~/Library/Caches/com.google.Keystone.Agent',
                '~/Library/Caches/com.google.SoftwareUpdate',
                '~/Library/Google/GoogleSoftwareUpdate',
                '~/Library/Logs/GoogleSoftwareUpdateAgent.log',
              ],
      rmdir:  [
                '~/Library/Caches/Google',
                '~/Library/Google',
              ]
end
