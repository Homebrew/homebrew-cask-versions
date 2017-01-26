cask 'firefox-esr' do
  version '45.7.0'

  language 'de' do
    sha256 '273b238ec26dba0521741154246ae804193fdb01ef423994d45dc97a9da626f0'
    'de'
  end

  language 'en-GB' do
    sha256 'a6e73341e464de3a0513a9d7b1a4bbac0e18d9375558e52530b69ccce017fa59'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '36c3049d8c0e265e2ba3a10e57ce09b99f3aef3fac110ec32f17706e8ee5cd77'
    'en-US'
  end

  language 'fr' do
    sha256 '39543704a55ba3060c06d29f0101cbeacb401069cc7836866f630159ae2fb14e'
    'fr'
  end

  language 'gl' do
    sha256 '6055b0cc77e8ceb7a025a91662f20026d6783b76bd41b73f647d0beaca9400cb'
    'gl'
  end

  language 'it' do
    sha256 '0560d70855915abcbd056d15aa0240d9000c21c020e18adaa150da62b7c63de8'
    'it'
  end

  language 'ja' do
    sha256 '66169e34584d05ab4926d336c105c23b28d5c9e9e80644a6d84b93e56efd979a'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a0895735750e113538e20f75e39c35be656732b5004f6d9f4f0889a449f0468c'
    'nl'
  end

  language 'pl' do
    sha256 'f863a7055f45a2629ba8265b9f75fcc039b31cb317d89538273bdece5f1700e2'
    'pl'
  end

  language 'pt' do
    sha256 'a894412afb21a43b7f199597011c1be98cb045bf1f2030aa10913bc66c6f5fae'
    'pt-PT'
  end

  language 'ru' do
    sha256 '540a9af2f8bcdea1c9f70cfae3459667ab23ce0701ec7446521c39f31be5b834'
    'ru'
  end

  language 'uk' do
    sha256 'eca820538bd41f5da55d00935730c84483465a25e10e613b47d2fc713373dd3b'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd6d02c3cf02159b8dbde8a310adb4cdb7d7ba6e50a5de8d4690d882ecc7b62bb'
    'zh-TW'
  end

  language 'zh' do
    sha256 '515e0a4a1a92b5c64a5599447c832d094bb3de34b5813b54f3f6e643373198aa'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
