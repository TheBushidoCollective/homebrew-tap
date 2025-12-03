# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.7/han-darwin-arm64"
      sha256 "fad6b7603243e15f2c34506d084b3f9fd30bc7f1c044ce9d246c7623cd38193c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.7/han-darwin-x64"
      sha256 "266abb346f5056e1378b0f848629e351132f958ed338f7acf80c9964f7b99aa5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.7/han-linux-arm64"
      sha256 "0b84066d2ac44f99ccd606174963f85b9701ccdb03bc8ae40f538af611129964"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.7/han-linux-x64"
      sha256 "2d119c1da9576d65d7110b0fd8311efde749f1d5c3100d430b529bf0b2e374b0"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
