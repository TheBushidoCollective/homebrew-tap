# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.32.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.1/han-darwin-arm64"
      sha256 "2d0500ad93813b941861ef202e1cf3111d46fe9a8ce728cb281d0e058ba1a842"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.1/han-darwin-x64"
      sha256 "a0433a41e844ee37b31835791271379f5e826b149af527d7f2eca794aec529bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.1/han-linux-arm64"
      sha256 "0dcecf58001652a95d68e0413757c4222380e23c6aaa31710158cddda9335e3a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.32.1/han-linux-x64"
      sha256 "d21701c5699eba3fac675ad5b5ca83e20db83bd06518a47dcc7e61873d87ba3d"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
