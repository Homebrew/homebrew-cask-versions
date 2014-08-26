class LittleSnitchNightly < Cask
  version '3.4-nightly-(4208)'
  sha256 'e3b91297945dcaaf7707f8f81301635012d56ea5342d817e21239d9b3f0945e7'

  url "http://www.obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'

  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
end
