cask "background-music-pre" do
  version "0.4.0-SNAPSHOT-b38f6dd"
  sha256 "7a62b0f505a3695e6e2d6055c363f6f018fcefb2bdf5054e8a0463d744ac9886"

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/#{version}/BackgroundMusic-#{version}.pkg"
  name "Background Music"
  desc "Audio utility"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  # When the leading version for two snapshot tags are the same, we can't
  # determine which is newer based on the trailing hash. As such, this check
  # treats the most recent snapshot tag as newest (if any).
  livecheck do
    url "https://github.com/kyleneideck/BackgroundMusic/releases.atom"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+[._-]SNAPSHOT[._-][0-9a-f]+)["']}i)
    strategy :page_match do |page, regex|
      page[regex, 1]
    end
  end

  conflicts_with cask: "background-music"

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall quit:      "com.bearisdriving.BGM.App",
            script:    {
              executable: "/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh",
              sudo:       true,
            },
            launchctl: "com.bearisdriving.BGM.XPCHelper",
            pkgutil:   "com.bearisdriving.BGM"
end
