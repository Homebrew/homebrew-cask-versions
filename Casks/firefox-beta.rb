cask 'firefox-beta' do
  version '53.0b4'

  language 'de' do
    sha256 '211f3a3c8908e61b17ffc005db8558f92dc3a7bc903d8f7de9ce21ea85289792'
    'de'
  end

  language 'en-GB' do
    sha256 '99787aecf7a2b26284219f9d1451a6a872c3bfbe5c4f46ca2a5fa76d32a148a4'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '30e7c6f35ac45415b93b001a9730b12bf81fb5ac1295509972e8c2ec91097c1d'
    'en-US'
  end

  language 'fr' do
    sha256 '3bbd340fcca82744fa5c728bc6deda68e0598a92f94b87a7b7a1385f3c6b2aa3'
    'fr'
  end

  language 'gl' do
    sha256 '5553b5c1c7275f3d513efd1b19e0210575d18fc3621377834a4ad77810ad8f34'
    'gl'
  end

  language 'it' do
    sha256 'c2bbb6b195b0d8fa63bb2fa4c5892307a4f6207e02dc06d2db2dd921d3f34365'
    'it'
  end

  language 'ja' do
    sha256 '0d674963d930823cbac78fe211df7985952a5d653e61a5a1d3c816d576f7daec'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '39460fd43ce8fe9d38fa7266d905e93e5be20750cf8f9a489f87ac978cae32a5'
    'nl'
  end

  language 'pl' do
    sha256 '86a0f39e6e9c55a39ecdc50cbd61d858d6605eeccaa5f71cbed1c18886f73964'
    'pl'
  end

  language 'pt' do
    sha256 'c490432a8a452f95918a52dab1a446b5ac77cd1eff6a0dc9683bf8b6c2ddd420'
    'pt-PT'
  end

  language 'ru' do
    sha256 '3ab3e9e6bd27b5e2d2457b4cae0bd16cba8115be298aa5233d78ab82a363ec4b'
    'ru'
  end

  language 'uk' do
    sha256 '90563793b6cbd07cc09110ab7c8c5e164b34232b7c48e2616d6ffe1aa9f8d365'
    'uk'
  end

  language 'zh-TW' do
    sha256 '79fd41fc37b43614c68957f392322c9e685cff58b287d1b57790f243f3d82ff8'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ba178e5e9a0938479134f0550f7d52ab9359629de5b51412867f566189019f5b'
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
