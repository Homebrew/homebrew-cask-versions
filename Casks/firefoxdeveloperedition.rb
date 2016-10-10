cask 'firefoxdeveloperedition' do
  version :latest
  sha256 :no_check

  language 'en', default: true do
    'en-US'
  end

  language 'ja' do
    'ja-JP-mac'
  end

  language 'ru' do
    'ru'
  end

  language 'uk' do
    'uk'
  end

  language 'zh' do
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-aurora-latest#{language == 'en-US' ? '-ssl' : '-l10n'}&os=osx&lang=#{language}"
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
