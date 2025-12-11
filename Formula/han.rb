# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.61.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.1/han-darwin-arm64"
      sha256 "2bda5d41fd46b01835057c4f5d2b5035677f0a6dff9c71681042bb627e753545"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.1/han-darwin-x64"
      sha256 "86b7e45dcb52bfc427d1d2e05e77c55f55e916650cb094bcf1b3d303b7c89129"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.1/han-linux-arm64"
      sha256 "5921cd2ce2f676547562b6a0959bbfe17ab898dc5e54daa1327d6db1dfef8aad"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.1/han-linux-x64"
      sha256 "5e01c33d8dabacd0517ee25934302aa0b1eeccbbf0b3565f7a67323834b7ea53"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
