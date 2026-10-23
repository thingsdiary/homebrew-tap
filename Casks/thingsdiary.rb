cask "thingsdiary" do
  version "1.6.0"
  sha256 "f30ecee0b132ddb2ccaa0a1bd1e6f244852cbefcb044586ef91119ebd4dbc3d1"

  url "https://github.com/thingsdiary/thingsdiary-mac/releases/download/v#{version}/thingsdiary.dmg"
  name "thingsdiary"
  desc "Desktop client for thingsdiary.io"
  homepage "https://github.com/thingsdiary/thingsdiary-mac"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "thingsdiary.app"

  caveats <<~EOS
    This build has an ad-hoc signature rather than an Apple Developer ID.
    On first launch, macOS may block it. Try opening it once, then go to
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end
