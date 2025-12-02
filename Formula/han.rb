# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.9/han-darwin-arm64"
      sha256 "7cd78ea0528598e3c430f7497716e214d2616de5c7c21969e65c1b4275b15136"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.9/han-darwin-x64"
      sha256 "29fe5789397549e51b05c261c6648332cd4d03a9b7fc6b763e1d1d9cc27774c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.9/han-linux-arm64"
      sha256 "40297520ac118476a9140f71c24371420b33524047dc2cb3064a408b0fcb0402"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.9/han-linux-x64"
      sha256 "26de750e140ec8419ec40e084faacae60347dbd43af34e6728ebd05d06a0cdeb"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
