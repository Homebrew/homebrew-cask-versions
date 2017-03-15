cask 'firefox-beta' do
  version '53.0b2'

  language 'de' do
    sha256 '04e5ebdf9c14a32253f6df882fb5dbe29c920909f4e209cce0dfa02b69d9ee42'
    'de'
  end

  language 'en-GB' do
    sha256 '2f8fe2e77d8b0e6d9ef287ba7253d938fd4ff4af967290ba0ac8fd1f4767fcfa'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c41cd28a134e7994d43b83464f8c1516e5195fa067da3aa02b72abc4d32746d3'
    'en-US'
  end

  language 'fr' do
    sha256 'c121f05fe4963f64a6427f2a3401c747a6fafcb9160dc1244ed370d73a780cde'
    'fr'
  end

  language 'gl' do
    sha256 '18c6ece694b6c4a3424d958ce6db23dde2807d62dbf9a04f31e5a151cd83bd09'
    'gl'
  end

  language 'it' do
    sha256 'adbdba88f2dcd249e9813f90172b6ea270d001aceec28402bc0bdfa797e1afae'
    'it'
  end

  language 'ja' do
    sha256 '7fda99f7bb1a3a4a64b87a4497763f8101482fadd6942fe4705104ed5cca6a75'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'df3ece5d8b9ae26893522f7b75e4cd7311abae2b0ae62ea9f8479ffa890049d1'
    'nl'
  end

  language 'pl' do
    sha256 '401fb460c9c15d98f267db8fd13320984cb65f96d3ba49040a77e7c2ba7905bd'
    'pl'
  end

  language 'pt' do
    sha256 'f62c78d4ec069fd4558d26617c3065c0c6ee93879228fc0d8fbce0cc0b1fb1b3'
    'pt-PT'
  end

  language 'ru' do
    sha256 '4aadb3d20d40a4dfa1c20ada867950d8665f876f9b6ffbfc6443b97b711b52fe'
    'ru'
  end

  language 'uk' do
    sha256 '21ba7e8af52408d3b519501412c349790cfb37500800a63cb1f268b72e1089da'
    'uk'
  end

  language 'zh-TW' do
    sha256 'fa19926c09df8be1d9a39c05bfb2e7eba53c087b57338fcb0ad364a9bf767dd6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '69283ffd985fa9413eb59eec7f0c49f070a676e2b6fbc6e96c7affc5cd25ccb9'
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
