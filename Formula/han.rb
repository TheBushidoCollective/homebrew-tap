# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.53.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.3/han-darwin-arm64"
      sha256 "dc1bee99fc226d2385cb5678bb06e280ec7ee1a55c411fffb43346b62ecce336"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.3/han-darwin-x64"
      sha256 "1b0dd28321c9fadbf00466c343d9d053bcdaacce079f93e64799c4592fb248d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.3/han-linux-arm64"
      sha256 "c7d58cb31de9f6993ed85ecb3ab2badca9c088a7147fbe74ef4ff2c4be0f079a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.3/han-linux-x64"
      sha256 "d3a8dabbb08b36abe4112dcd4b485e561df3380346d12142e5bf773df8116294"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
