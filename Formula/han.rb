# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.0/han-darwin-arm64"
      sha256 "09ae12bb3e333e4ba1772c4bf1f691fd9602c5802ffdeca3d365722f00145ab0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.0/han-darwin-x64"
      sha256 "53776f9e83fea846964ec66813d489c18439d18e1bbfbc06b6333b824ad8aedc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.0/han-linux-arm64"
      sha256 "bbbd1c9670f01cec1ed4d9bdcf2e6ca02e5d3d2d0f920411c5d6ab0f1c444e3e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.0/han-linux-x64"
      sha256 "ad3145e919d292fb9230deeb165a77f0e5b1c7fb83ef0010be9ab7e31ec5662a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
