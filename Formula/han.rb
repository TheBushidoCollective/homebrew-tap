# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.23.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.2/han-darwin-arm64"
      sha256 "16674524d7f4a0192170f8eafa18779cc8e5024dd94b3dd869bc0f3cb494692b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.2/han-darwin-x64"
      sha256 "01e178eeeb733ebbc1aba669873ad6301e96ad2ed2c64e92cfd029d7ee31e3a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.2/han-linux-arm64"
      sha256 "b8dc329681f9f1eaad74da88378599b527f8df3524ee5c173f82e20c8353d07b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.2/han-linux-x64"
      sha256 "5eabf7952ace6493e1f26d021f0c3ea3476309bd1e959a275f56ea0f464169a1"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
