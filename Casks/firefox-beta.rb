cask 'firefox-beta' do
  version '51.0b11'

  language 'de' do
    sha256 '2f9f08149629bf52d7675981a096306a3fcf1041305d34215059535ec9635066'
    'de'
  end

  language 'en-GB' do
    sha256 '9dfd2029b38b56e08a8a6f27ad00f523985a547488df5a7b442c32801399c4c8'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'aab2a5a52ea4056026d9eaf98035a31eec720a8931c2c60986a724aeec745439'
    'en-US'
  end

  language 'fr' do
    sha256 'aa185d2f89dd20d93fb1692b0566e732acbe5372d41af35e2569b62798b07af7'
    'fr'
  end

  language 'gl' do
    sha256 '16d6e764ff0eca3793bd3908687279ef7d8244a557fd2b007d45a9318d056fc6'
    'gl'
  end

  language 'it' do
    sha256 '613414115d5e80e498e694d1c12a818a0126d81b655830602154db430beae519'
    'it'
  end

  language 'ja' do
    sha256 'bfda0ed2338250646f18edc8ce75f18bec513e66f43af5e72871c4b0ba70e049'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '35c8395046d522a75d7c4dd8aae98182eac7fc22e14f16116c2fe991dec3f576'
    'nl'
  end

  language 'pl' do
    sha256 'd8db7dd25d0794bc9d946f15d9ddc1849d2f568846d3c9ca718f2ec4edd0d8dc'
    'pl'
  end

  language 'pt' do
    sha256 'a7d29dddd0e43499a91aad57f4b660516e59f139f00316282922b9344221e6da'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6d5ef2c527f40a1474b798261280b4d30589a6b522a414bb57d5abd9ac961106'
    'ru'
  end

  language 'uk' do
    sha256 '690112a11fff64a7e24ce0a24cea4bc229f8b5b82a04d7c3c4d4faec162ac21b'
    'uk'
  end

  language 'zh-TW' do
    sha256 '5776cd087bb76a3e36bf4ce333051d3d37f210e0a33f87e5366c8202035ecd70'
    'zh-TW'
  end

  language 'zh' do
    sha256 'eb76e8ef6b61ad68a4a1a19df97d4b60caa1a648d0373d42350538eaa9ae8139'
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
