cask "rpcs3" do
  version "0.0.34-16979" # check current release
  sha256 "auto" # Homebrew can livecheck this if we wire it up later

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-#{version}/rpcs3-v#{version}-macos.dmg",
      verified: "github.com/RPCS3/"
  name "RPCS3"
  desc "Open-source PlayStation 3 emulator"
  homepage "https://rpcs3.net/"

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
