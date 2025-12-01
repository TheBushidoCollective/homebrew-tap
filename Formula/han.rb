# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.28.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.3/han-darwin-arm64"
      sha256 "651523241573e08d714154d1acbde3129ca8bec1a04680e90d47c4b9661daa73"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.3/han-darwin-x64"
      sha256 "c389fd0d58f71fd0f825f91827673aecfe864d8a208bacd83e0ff98b1d8c2c3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.3/han-linux-arm64"
      sha256 "8ea29b41d9783fa56b7b46fbb413afb749c41cdf1bf92bf5f2313b263329e9ca"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.3/han-linux-x64"
      sha256 "fad453ad80d73937ec0e918e474a056d61fa5fd5d9d01d8bff631ca5a5ee2b72"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
