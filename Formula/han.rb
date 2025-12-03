# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.39.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.2/han-darwin-arm64"
      sha256 "a0c4f0186f9dd0638e406ab21f7bf24e368651b5b7de2e0898ec5c3f90b89891"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.2/han-darwin-x64"
      sha256 "8a73e8bfc41cd174b3e0bac8815b262348939aa5608137c175f9b7539242d754"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.2/han-linux-arm64"
      sha256 "8b57359018a09133771b8b45c7232296982474a532226f83043d4519580392ff"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.2/han-linux-x64"
      sha256 "8f4b845f583e29e561c5dcbd12d09a340e2a86d49bd3c33b67a3cb700bd9d62d"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
