cask "porthole@beta" do
  version "0.1.0-beta.1"
  sha256 "36f26a37957f9182aff4420f16284d1ca779e613c0dd75ecc2b72fb5785ab5b4"

  url "https://github.com/innerlightlabs-org/porthole/releases/download/v#{version}/Porthole-#{version}.zip"
  name "Porthole (Beta)"
  desc "Menu bar app that surfaces Syncthing status (pre-release channel)"
  homepage "https://github.com/innerlightlabs-org/porthole"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-beta(?:\.\d+)?)$/i)
    strategy :github_releases
  end

  depends_on macos: ">= :tahoe"

  app "Porthole.app"

  zap trash: [
    "~/Library/Preferences/com.innerlightlabs.porthole.plist",
    "~/Library/Saved Application State/com.innerlightlabs.porthole.savedState",
  ]
end
