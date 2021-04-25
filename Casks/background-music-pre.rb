cask "background-music-pre" do
  version "0.4.0-SNAPSHOT-b38f6dd"
  sha256 "7a62b0f505a3695e6e2d6055c363f6f018fcefb2bdf5054e8a0463d744ac9886"

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/#{version}/BackgroundMusic-#{version}.pkg"
  name "Background Music"
  desc "Audio utility"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  livecheck do
    url "https://github.com/kyleneideck/BackgroundMusic/releases.atom"
    strategy :page_match do |page|
      page[%r{href=.*?/tag/(\d+(?:\.\d+)*-SNAPSHOT-[0-9a-f]+)}i, 1]
    end
  end

  conflicts_with cask: "background-music"
  depends_on macos: ">= :yosemite"

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall quit:      "com.bearisdriving.BGM.App",
            script:    {
              executable: "/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh",
              sudo:       true,
            },
            launchctl: "com.bearisdriving.BGM.XPCHelper",
            pkgutil:   "com.bearisdriving.BGM"
end
