cask "ryujinx" do
  version "1.1.1295" # match current release from ryubing repo
  sha256 "auto"

  url "https://git.ryujinx.app/ryubing/ryujinx/-/releases/#{version}/downloads/ryujinx-#{version}-macos-universal.zip"
  name "Ryujinx"
  desc "Experimental Nintendo Switch emulator"
  homepage "https://ryujinx.org/"

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
