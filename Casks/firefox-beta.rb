cask 'firefox-beta' do
  version '51.0b12'

  language 'de' do
    sha256 'd5df996cea63f4cb506df42e3eb602cbf2b93fdc50af0a6acfc0f86455094762'
    'de'
  end

  language 'en-GB' do
    sha256 '285fca73ad2c82f99d879941bc03a797890f80a2814869f39ee334a5966584bf'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '32addd90eb53afdd3371b89024ca7329680787e97a66f6822d51ad2626649f42'
    'en-US'
  end

  language 'fr' do
    sha256 '88bdce0953b353f7198c0741094703ed89a67d5c4c68dea8cf3c5e846f9d4904'
    'fr'
  end

  language 'gl' do
    sha256 '629110186117a14c29674b4d20dec4a55c9ad7a21f4ea464332ae8b2e6c3b241'
    'gl'
  end

  language 'it' do
    sha256 '27a637bd51030c7a623697e76a508734f5c860e7d04707270ba627c85fd203fb'
    'it'
  end

  language 'ja' do
    sha256 '76f1cae2f0e6af5be1c177cfd2cebf4bfe94381c70df1a9ab4c5a55ae91f0f26'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4203c3cc9149bc8b15de46591dc16996c17f10d8077625695569fafa95dc4195'
    'nl'
  end

  language 'pl' do
    sha256 '76f70baa0511a39b54d51ad0199c6a038d6000e9b7098f8b0828a927c5898aa5'
    'pl'
  end

  language 'pt' do
    sha256 'd91f7529c65aa277e7209b85eb5e5581debea464602708d0eb8c0cadd023b8db'
    'pt-PT'
  end

  language 'ru' do
    sha256 'fc18947dd88f48f719669ab962c8c88cfb7647f6e5ac40446e58444224a77784'
    'ru'
  end

  language 'uk' do
    sha256 'ccf9bb544a753e3bdf569a0b123320cab71c0bbe9715add553aff8df48b1e5a3'
    'uk'
  end

  language 'zh-TW' do
    sha256 '161f915b557061b76994f88cba67702edce5fdbad811cd9ca54b10115147bac4'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f41dddb0fdad7ffe0b5538d73c721b964025abea409ac968892bda709f2ad4df'
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
