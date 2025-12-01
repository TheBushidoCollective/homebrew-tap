# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.30.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.2/han-darwin-arm64"
      sha256 "3c8fa4c3326e4d2e743c0e5cf9dd0b5149f25ab4addfe56d020cc73f84c0e009"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.2/han-darwin-x64"
      sha256 "7cd54ee6a72aaf4dc0f158318807c3ce7f6920e5ccd11e9e4c5d5033ac371747"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.2/han-linux-arm64"
      sha256 "6d8fe12df52e15cbd3959465a9fbd27d2fe67ee35c7e92d055c330294be77ebc"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.2/han-linux-x64"
      sha256 "c2b673d1acb6c5e6683d2e3d231119478068f9273426067c53e0ddd772da53c9"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
