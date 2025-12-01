# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.30.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.1/han-darwin-arm64"
      sha256 "a7903881e5e3a1cb38b43aa7dab5865803791991de3e6cd55d9057265fce88fe"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.1/han-darwin-x64"
      sha256 "5e77388da7457464e0028397895f3c695538f7d4f4f310dfffa934800fb23b9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.1/han-linux-arm64"
      sha256 "48b20d8a2812cad39c9948915d93b6a5cbf20ce910292500ac099e5e2bf9836a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.1/han-linux-x64"
      sha256 "d4591f4b83072582bd38ea0f01ee928883bf8faaf859764d3afa7b8b493947ac"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
