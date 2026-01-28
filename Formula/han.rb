# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.3/han-darwin-arm64"
      sha256 "85ace31872fe6e36416bcd4252542f3b9ee6d7709586fca03366308130fe1388"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.3/han-darwin-x64"
      sha256 "3453fdc3a1d83173b33c0c1a9a80c6a0530ef3c3286c1940ae1f14e35faf1ef7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.3/han-linux-arm64"
      sha256 "7f220957012647aa2e4913b190a902ef4fa6563ff0741b249bf986b210a9cb80"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.3/han-linux-x64"
      sha256 "f2d3d29d7680ab59aa7513552b4b9a0b5737a3c97f85281f13e8c791c83f8b14"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
