# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.56.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.1/han-darwin-arm64"
      sha256 "c547155c2b775ca666a3072e25cd10951d89c77953dc31413d392bffb666285d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.1/han-darwin-x64"
      sha256 "5ab64eab45e03416d63917a99d0dc7b63dad2f00a750d2ebe687b6a59d09e006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.1/han-linux-arm64"
      sha256 "87ec0a73e724e82a39379d16a0a19b490e1a73894db0feb1b752b2a48b2a1651"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.1/han-linux-x64"
      sha256 "4f5c1fd76a5834be4136ce8a7d77648730cd6883eec25c91940425ee5b83b628"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
