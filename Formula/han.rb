# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.2/han-darwin-arm64"
      sha256 "f172275a1a2df152d9f645b947a3de2abb8e203d9981b17c6bf0dd4178401b78"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.2/han-darwin-x64"
      sha256 "c47d4f39d505efbe7fff2d8852dd076004ba6d9d448224482d8ec25e193747e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.2/han-linux-arm64"
      sha256 "35221d951ae2e88384944c3ecc73188314ce7cb99951b14abba1890daca16d77"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.2/han-linux-x64"
      sha256 "06cec14c4d5b684cf5d1228b80e342aeb68534e61c8472844293515e3b085be5"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
