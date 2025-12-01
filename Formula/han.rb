# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.27.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.1/han-darwin-arm64"
      sha256 "2d9224975ae897e51e73c7e568d511146beccc67ef4d4e7afae0080ccb2e93d9"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.1/han-darwin-x64"
      sha256 "8598345d061c50d0b7d444633f1bd5b05fff292030cedf069217f5c131c0d286"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.1/han-linux-arm64"
      sha256 "814a364cad6694ec89cb3f4729013a019b7b1e4ca61a1256358b3248954bfac4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.1/han-linux-x64"
      sha256 "499a4fda0b7ccbcb0c6b03ea67b1397ae110eb6afda7fb940d76a59ad0d068c2"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
