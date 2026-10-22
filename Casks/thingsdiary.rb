cask "thingsdiary" do
  version "1.1.1"
  sha256 "59e2975963cb0819bbccb0c87510bf3251c6da0e7a3828bcd70cdd077ec584b7"

  url "https://github.com/thingsdiary/thingsdiary-mac/releases/download/v#{version}/thingsdiary.dmg"
  name "thingsdiary"
  desc "Desktop client for thingsdiary.io"
  homepage "https://github.com/thingsdiary/thingsdiary-mac"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "thingsdiary.app"

  caveats <<~EOS
    This build has an ad-hoc signature rather than an Apple Developer ID.
    On first launch, macOS may block it. Try opening it once, then go to
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end
