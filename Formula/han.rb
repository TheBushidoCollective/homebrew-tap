# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.48.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.6/han-darwin-arm64"
      sha256 "2ee257691ef27846be005866f11b91b3267e613cec20ea2aac6fe4f7a54b2c1c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.6/han-darwin-x64"
      sha256 "2527cb72dc94197841a418781e8d6ddfdb9524bc3786664ecfd28a3e4cfb4e0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.6/han-linux-arm64"
      sha256 "d0bb44920727f114df987015e919d7715bcfd3b6da3cdc1efeb2acb6397c3c5b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.6/han-linux-x64"
      sha256 "d5de9f071f170bba532f9c64799e5b6f76ddce686a7efd5add74c4a0ead4c547"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
