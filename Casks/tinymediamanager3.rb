cask "tinymediamanager3" do
  version "3.1.17"
  sha256 "4d23975d03daa2d1a77662bdc712f7d4621e35323d28214e2f25566231ca1ae3"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  name "tinyMediaManager"
  desc "Media management tool, V3 version no license required"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/download_v#{version.major}.html"
    regex(%r{href=.*?/tmm[._-]v?(3(?:\.\d+)+)[._-]mac\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  caveats do
    depends_on_java "8+"
  end
end
