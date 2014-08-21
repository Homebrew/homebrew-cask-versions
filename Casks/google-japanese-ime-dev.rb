class GoogleJapaneseImeDev < Cask
  version 'dev'
  sha256 'd3f786d3462e0294f29bc1f8998163489f812a1ae650661e9a26a92b731c2ef8'

  url 'https://dl.google.com/japanese-ime/dev/GoogleJapaneseInput.dmg'
  homepage 'https://www.google.co.jp/ime/'

  install 'GoogleJapaneseInput.pkg'
  uninstall :pkgutil => 'com.google.pkg.GoogleJapaneseInput',
            :launchctl => [
                           'com.google.inputmethod.Japanese.Converter',
                           'com.google.inputmethod.Japanese.Renderer'
                          ]
end
