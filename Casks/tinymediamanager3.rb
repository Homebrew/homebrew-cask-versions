cask "tinymediamanager3" do
  version "3.1.15"
  sha256 "38cab22657b8ef1cf9f9e1182f96f6974de3a86bb222e62190dd8dac98d5b9c8"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  name "tinyMediaManager"
  desc "Media management tool, V3 version no license required"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(%r{href=.*?/tmm[._-]v?(3(?:\.\d+)+)[._-]mac\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  caveats do
    depends_on_java "8+"
  end
end
