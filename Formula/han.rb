# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.1/han-darwin-arm64"
      sha256 "5915d6572e16ecdd082aa7d5fb3b6beccdc0e3e29fc9d75cc728926d2376c3c7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.1/han-darwin-x64"
      sha256 "228b04ef0122ffc17e25fec802a7b06898eb8fdf8f40c761aa4f9f301cb2df9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.1/han-linux-arm64"
      sha256 "b60f89242ca56238fc77d87e7a24a2a3870e14f6360eeb5708ac633ebb368b56"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.1/han-linux-x64"
      sha256 "e51ba09adc7dcecd6781293bcd325892ce677aded3864c1e727d89f1edc72020"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
