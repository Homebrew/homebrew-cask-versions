cask "gimp-dev" do
  arch arm: "arm64", intel: "x86_64"

  version "2.99.16"
  sha256 arm:   "78a9454d7592529319a7020d87b1dacd80949274cf37ef73131031fb5c464d4c",
         intel: "ab3e6bf67c85a84039a540de24edc1f2b4eaf42acad503b8a212742896e4b40d"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-#{arch}.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "gimp"

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
