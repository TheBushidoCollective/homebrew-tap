# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.16.0/han-darwin-arm64"
      sha256 "aa5fbb3bfeaf37ff902f26cf61a31d2269542b5d3c112950ea23645e9046ba07"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.16.0/han-darwin-x64"
      sha256 "40db88970a7dd70ab6c34d263a8f511b268f970a49227f4f5490b6a41ac256a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.16.0/han-linux-arm64"
      sha256 "a24ba6a6004dd368a0e0726e5f52dca9e20905398a227c58f01581b77371f605"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.16.0/han-linux-x64"
      sha256 "f20d819db213cca1652e427d6c29e03b13048fa0998809d7e96585dcc1bab064"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
