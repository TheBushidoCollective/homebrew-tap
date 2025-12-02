# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.5/han-darwin-arm64"
      sha256 "6e86d7280e95a0c42f59cd882fd78aab95b8be8cdd8a370f58c0f90ad29a8f9f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.5/han-darwin-x64"
      sha256 "0ffb7b057ae8d56938a447db52933ec9656772274f4d39f531b2853a58328ca2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.5/han-linux-arm64"
      sha256 "74da355f306879925d993e7ba9eb1c8c88c206794f2bbc4c1a7c3a42e8305ae6"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.5/han-linux-x64"
      sha256 "8fec645f8a7fcd1f373d0e2fcb2ceb6dd82c73205c8d44de768b2407568ddc81"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
