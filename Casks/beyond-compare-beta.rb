cask 'beyond-compare-beta' do
  version '4.3.0.24036'
  sha256 '4431e59d435e4a614fcdecff70467855b54e9a2f0619c86a0aedb29bfa243329'

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast 'https://www.scootersoftware.com/download.php?zz=v4betalog'
  name 'Beyond Compare'
  homepage 'https://www.scootersoftware.com/'

  auto_updates true
  conflicts_with cask: 'beyond-compare'

  app 'Beyond Compare.app'
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
               '~/Library/Application Support/Beyond Compare',
               '~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*',
               '~/Library/Caches/com.ScooterSoftware.BeyondCompare',
               '~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState',
             ]
end
