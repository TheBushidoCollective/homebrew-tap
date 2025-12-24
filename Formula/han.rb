# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.1/han-darwin-arm64"
      sha256 "c91939060b87ce4ebc9fb8b3c176d061f96d63e5b24f83dd03550f0d383fe839"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.1/han-darwin-x64"
      sha256 "56be00cee834dbda50f6c39eacd58cb978eb6a664c45d36b61fe7d654510e8ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.1/han-linux-arm64"
      sha256 "87f06457dfbb9b2b9aa65a9cd82df5e1ca3f6c911f3bd99aaf98352db0f9ca19"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.1/han-linux-x64"
      sha256 "282e5b5daabaac7d02e05e08ba4910b26b836cfd5d3eb4902c32d145b54437cf"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
