cask 'spatterlight' do
  version '0.5.12b'

  if MacOS.version >= :catalina
    # URL_SECTION recent releases are only on github and not ccxvii.net
    sha256 '4f9f975bbdc747fe6ad0a33ed25ff1baf82340987b2f6937f8a08ff83c337b79'
    url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Catalina.zip"

  elsif MacOS.version >= :mavericks
    # URL_SECTION recent releases are only on github and not ccxvii.net
    sha256 'f9fa79d5d8e81397058e0f4ccd1d4e944ef6c5c66b2dc92792456feeaf8379e6'
    url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Mavericks.zip"

  elsif MacOS.version >= :lion
    # URL_SECTION recent releases are only on github and not ccxvii.net
    sha256 '96f5a07ba8b66d58e4317b8e36fdc14bf8855834b72af4c43a1d037f20e5755f'
    url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Lion.zip"

  else
    version '0.5.0'
    sha256 '1729c51676f791149f4829454318f373eff43bf8d8388ecbe3b345308c669ba1'
    url "http://ccxvii.net/spatterlight/download/spatterlight-#{version}.zip"
  end

  appcast 'https://github.com/angstsmurf/spatterlight/releases.atom'
  name 'Spatterlight'
  homepage 'http://ccxvii.net/spatterlight/'

  app 'Spatterlight.app'
end
