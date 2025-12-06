# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.50.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.1/han-darwin-arm64"
      sha256 "a1b8a503076043dc6fd54044b4281978e8357eabcc2ea0607c983a6f7d5c5207"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.1/han-darwin-x64"
      sha256 "0b6ff4e176d9eb304acd14a295780908c0f521dfb2b1d07d9b5f6c57d763d223"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.1/han-linux-arm64"
      sha256 "a1033d53b4c94def4679c0a03c3f28dd6a561bd71055d1afcdcfe1fe841f5705"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.1/han-linux-x64"
      sha256 "45b605f3e8d4f20302a96f6ecc5414dd75265d2ee03b2392b14aeae870747be3"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
