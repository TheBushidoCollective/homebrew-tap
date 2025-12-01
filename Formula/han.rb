# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.0/han-darwin-arm64"
      sha256 "84758b1be2ee533cfd168937f66b949b73b97dfce6ad47c8b105a459458bdb98"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.0/han-darwin-x64"
      sha256 "a39cc6e41807836f246feca79b6ff682532f90f3462c7d66d4946448cee66743"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.0/han-linux-arm64"
      sha256 "bcf5d19e4b641b574427eacd50c98691d89adcf847c8cec42727e29517fd3200"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.0/han-linux-x64"
      sha256 "17de36274f89276b434a2485a79aa421792f80ae21ff529dac96c5c7f0bf6349"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
