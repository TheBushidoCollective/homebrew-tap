# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.34.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.2/han-darwin-arm64"
      sha256 "eb410bc938c1d9d98f8ccee39bc8fe806ed3941a1782b4e0f56291129a69b887"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.2/han-darwin-x64"
      sha256 "73778938fe7bff6b08af6fe8eb8bd42f972c2f93711a0cedc8f194356eca125b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.2/han-linux-arm64"
      sha256 "319f1d8c726e86ee00240d072db84cbc3f7f0d8b51ac229e1145fc19d8f991d5"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.2/han-linux-x64"
      sha256 "578b8f2deddd6872b39a1f76fc61bff6ed22d5ef8fa8aefb4fd64782b5099e4d"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
