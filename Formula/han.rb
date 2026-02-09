# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.1/han-darwin-arm64"
      sha256 "d7c143fad413d87ec6fd47484c764cb46db6e0c26356a8497eeea0d85812caab"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.1/han-darwin-x64"
      sha256 "6114534b2988a5d6da7a519a8c75c33544c37aaff7f8ecc324bcc6fadab2085b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.1/han-linux-arm64"
      sha256 "1ff3da8c1df86539c0c8460fc2e87a4b1078fc69c47b711e52ebd177e5f5c664"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.1/han-linux-x64"
      sha256 "3e69a04ff6e05c211bc0c300f1a969f2f4eb257dc80f8c07a1f4f78cf55ca53b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
