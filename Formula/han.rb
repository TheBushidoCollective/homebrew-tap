# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.28.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.4/han-darwin-arm64"
      sha256 "6f6b7c48fe61701323da0564507ae51e846539e1ddc988a93088564dd7841c73"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.4/han-darwin-x64"
      sha256 "4311e9d2b8874dc8b3f3d28b32a8294977de2f5061574272a99f8f4b0bbd73c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.4/han-linux-arm64"
      sha256 "6718d2dc9bede520536312a87000dbcc1b6b94e6865fbfdc65c432480aec7705"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.4/han-linux-x64"
      sha256 "1c4f899dec204b1d4873cd20ee56907a1afaca0858238f8b0081bc2523664063"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
