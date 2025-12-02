# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.0/han-darwin-arm64"
      sha256 "92dd35b12335bcdb4c6f3a1690b9080b2919a2d0b84e239eb5cc3f1b3e92f038"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.0/han-darwin-x64"
      sha256 "5bc5102b23318d3a59be21a820774d0347fe91a07f5d4ea75bc10a6f1fa4cbe8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.0/han-linux-arm64"
      sha256 "251520f36c5d755f278a27a4471a3c322d951d87b32646882b990f2934067803"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.0/han-linux-x64"
      sha256 "baac13709c0d2514cff9bc306abd7751908a0bc28ef179d4e44b3d6115e4dab7"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
