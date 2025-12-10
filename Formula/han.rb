# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.58.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.0/han-darwin-arm64"
      sha256 "6c24341d87050d9f73bd3237db5ea1b6c06a287b9e160f04f6771fe3ff97b3d4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.0/han-darwin-x64"
      sha256 "186466823e05e1d5bb4b33489ab36988155394581aacd7c62e7567f5880091c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.0/han-linux-arm64"
      sha256 "1cad873b80d6cb24f7482b1439715c7445fe335f4f245f0967a5eb4ca5e40f1f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.0/han-linux-x64"
      sha256 "3981aeba87a1908103e23f405c6b00a2ec40d4e663eaf24c84fa18838dc9417a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
