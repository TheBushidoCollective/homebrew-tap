# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.47.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.1/han-darwin-arm64"
      sha256 "157c45f0d0b8c75a829f41c52433b71b85d15babc34d7b423ab0adfbb03f3111"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.1/han-darwin-x64"
      sha256 "62f7d053024bf2f9bd535efcc72dbc5c98786601f6a4ac49aa9ff23bcf82acc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.1/han-linux-arm64"
      sha256 "79ad35e0a2e6ed5311ff25e0b270da9075824f790d38b6ab01925cb8e43ef450"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.1/han-linux-x64"
      sha256 "a535a26b2abd6011f00c816c0c7c8a5e35f318490b3ee1aa341094edc34dd9b2"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
