cask "neardrop" do
  version "2.2.1"
  sha256 "4f655814454e7bee427d1f238109b6fc66836a8b78b66faef5a289d42701621b"

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
