cask 'firefox-beta' do
  version '52.0b3'

  language 'de' do
    sha256 '5b98151a6ae46fd14ff063a0d216d46efd2a5b60e0020dff36a759ea762d572f'
    'de'
  end

  language 'en-GB' do
    sha256 '42cfdf8d051906018072c0e2aee3b2941d15f8f84d22f4286e5f32ccd7d2a388'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'dcc7a481adcc6715b1ab24e1d212a8904e7e41f2f0479a1db8f17ccad1709a65'
    'en-US'
  end

  language 'fr' do
    sha256 '5327eb34def98ffe121084f10b0e48b9bb9af863423ec845329a2942840d0ad6'
    'fr'
  end

  language 'gl' do
    sha256 'b5fcebe83aacf7caecd737fb69e47ca373fd53185b893196076bee7eb21a989f'
    'gl'
  end

  language 'it' do
    sha256 'e9cf4efb2baf6584ecf5aefa418c3b5de4c4d59749395b75a298bfdc1cab8fcd'
    'it'
  end

  language 'ja' do
    sha256 '961376b6d032b81399a22dd58e6f63edc9e3f896ce86171a63b8aff4bad069f8'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '5ed65b765b77206c8400bc84062ff597c0a3843263076b25a29d0b477927a9ea'
    'nl'
  end

  language 'pl' do
    sha256 'f06949b119bf0b79ca101d08c8eac614e208465e7a69ac274aa8a70afd8f719f'
    'pl'
  end

  language 'pt' do
    sha256 '0401e9dbeb1e2812c4a3b4a2c1e6acb3b8aaaa02a751dded7d20d8ffcff024ea'
    'pt-PT'
  end

  language 'ru' do
    sha256 '5a8b2cf3c5bacbda4f3fd99c57360dc4a8f47648f75978d58e667337701f5523'
    'ru'
  end

  language 'uk' do
    sha256 '497791e2dc27d44431e83485fc9c20ebea702d1b31ea0ec5f31dc7092092e285'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b10bbbfa4e8d79b429ebf11fc137d5b835d3d10e6d4470cee5e0baaa32d9b20a'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd02bcf6df5be15c5a343e0391bc80050614f1b1864eb016ca61de00e8ccfc831'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
