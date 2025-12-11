# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.60.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.0/han-darwin-arm64"
      sha256 "0a59ece35d1d89e192d15f0e55822b9219d497293bd9582e9f90c638ad07e5ed"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.0/han-darwin-x64"
      sha256 "840e6a4f16bacd8d90cc3bd2d324849d5d2f5211fe233b53f81b9c4aa66a0ea9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.0/han-linux-arm64"
      sha256 "15cfb775b9106d51acedf76070f7e78b04479950210ce9f84bebd7c1f3b746d2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.0/han-linux-x64"
      sha256 "39e36a3e65583bd388d8bc199180cde285e9f27bdfc9808d3ebd0da788797286"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
