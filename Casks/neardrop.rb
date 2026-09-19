cask "neardrop" do
  version "2.2.2"
  sha256 "5ec6528836c6bdc2d89e440f957ded07d7ea3db8418316488ee5668b1e433f47"

  url "https://github.com/grishka/NearDrop/releases/download/v#{version}/NearDrop.app.zip"
  name "NearDrop"
  desc "Unofficial Google Nearby Share app"
  homepage "https://github.com/grishka/NearDrop/"

  depends_on :macos

  app "NearDrop.app"

  uninstall quit: "me.grishka.NearDrop"

  zap trash: [
    "~/Library/Application Scripts/me.grishka.NearDrop",
    "~/Library/Application Scripts/me.grishka.NearDrop.ShareExtension",
    "~/Library/Containers/me.grishka.NearDrop",
    "~/Library/Containers/me.grishka.NearDrop.ShareExtension",
  ]
end
