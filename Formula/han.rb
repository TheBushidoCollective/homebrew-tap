# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.39.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.3/han-darwin-arm64"
      sha256 "62b7e4a1fdf8027d6a8e00eb884b7f496587a580126b08ac690d5e12f9c2c98d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.3/han-darwin-x64"
      sha256 "7795d3e47693ceb45e878eefc6b76a24714791581599b74a412a0dcc07ceffd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.3/han-linux-arm64"
      sha256 "0f6425b442eb9db7634b3ce14a8e4103792f2c71436740361306fb899b77e327"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.3/han-linux-x64"
      sha256 "91fc6fb2821e3e5e2d4cb6993765a2178156939c2c67242b9ad715365e327ccf"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
