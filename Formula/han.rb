# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.5/han-darwin-arm64"
      sha256 "ddc04f143ad26f74edd6a230fe5f75b41e0493b0e0d9282af5de438b84746ff4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.5/han-darwin-x64"
      sha256 "6276c01cd2d12fbaf7bfff3fc5af92394a426cd56aeb1c240c0a2328e3edd1b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.5/han-linux-arm64"
      sha256 "cef44070eb83cf6abd11b9bc8e16579f6a1cab52972e3fb018d759bae749888e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.5/han-linux-x64"
      sha256 "9050a08ce3fbf9dd40ad2972d22ca11b769ab045dbce2ffdcfda027b4c17b513"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
