# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.49.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.0/han-darwin-arm64"
      sha256 "05f033babaa50be6f0e9df49dff9d943ad8f06f341cad1b03641a2ac9842ed50"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.0/han-darwin-x64"
      sha256 "bb4030af3b394f146a7bbdd63ae4cfbe8cb1865613b5d7b91c30befdc60023db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.0/han-linux-arm64"
      sha256 "52dd620c28852c62564e5951992a525ac875971b26fd9e180019b73f8cc7ca99"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.0/han-linux-x64"
      sha256 "6d941e9bbc4c673d83d0d0fe3517511ec24ca7b6ec0b02e6949c994393fafa8f"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
