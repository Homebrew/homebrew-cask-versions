cask "gimp-dev" do
  arch arm: "arm64", intel: "x86_64"

  version "2.99.16-2"
  sha256 arm:   "1e58a7a31b8fe5e5e18775ab82569664aca3355421606cc62343ec746e376e29",
         intel: "c50f875de3fe84f8b370517b461fd2ee3fc70a68c690ca132a7eaaaabe75f43d"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-#{arch}.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "gimp"
  depends_on macos: ">= :high_sierra"

  app "GIMP.app"
  binary "#{appdir}/GIMP.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
