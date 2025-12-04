# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.45.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.2/han-darwin-arm64"
      sha256 "5a75439ae09cf875275759b2c764abf47926b02c80cc4dc0f9d411ea3142c1eb"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.2/han-darwin-x64"
      sha256 "ea0739e9f95d8ea2b50a510c21f700521ad47a448728d13203fbbf5c40e6c5f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.2/han-linux-arm64"
      sha256 "4266d96a9bca289ae89bcdb0bed3c7e6d2cbeaf6cffaa45c2998f18de508af99"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.2/han-linux-x64"
      sha256 "d01571d2afade1c7fe7ef0e3791137f1ebe7e0ba5b96386184b0aa5dc43939a3"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
