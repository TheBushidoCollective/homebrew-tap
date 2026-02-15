# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.13.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.2/han-darwin-arm64"
      sha256 "7da8e670313ab13788cd8d5092e7ae7b9080b5b5dc509007bc3b63a44af3e329"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.2/han-darwin-x64"
      sha256 "5ab4852e6265698ad7013d1e92aae7048bcb9a0b6e62b915cd71ac332e5db8ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.2/han-linux-arm64"
      sha256 "f3e04c512092aeafa74b9981a33648d809a387323489a9e050aab53d9aca3c9a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.2/han-linux-x64"
      sha256 "7f50d0c5d50644f6793f3a495d02a968eebb7dabf3165c8c32675a89f33b43b0"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
