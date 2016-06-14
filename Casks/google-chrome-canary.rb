cask 'google-chrome-canary' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/release2/q/canary/googlechrome.dmg'
  name 'Google Chrome Canary'
  homepage 'https://www.google.com/chrome/browser/canary.html?platform=mac'
  license :gratis

  auto_updates true

  app 'Google Chrome Canary.app'

  zap delete: [
                '~/Library/Application Support/Google/Chrome Canary',
                '~/Library/Caches/Google/Chrome Canary',
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
