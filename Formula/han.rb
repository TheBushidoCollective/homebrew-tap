# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.38.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.38.0/han-darwin-arm64"
      sha256 "ae292397305a741f33f2ef2f8bf85262aaac4d72546ea55318c1b0d86dc3c398"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.38.0/han-darwin-x64"
      sha256 "aaa5c8109421a59b50ca67ad2543468b115dd6736c0b4a280027dedc5909d3e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.38.0/han-linux-arm64"
      sha256 "da83d6d1cd52328d3dcee836a11bd5f29fcb39bef78f993c563580fb3499a29b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.38.0/han-linux-x64"
      sha256 "8b7097b8b2f66cd57153c3a101797a033ad1f61bfe45764f3be415df3dbbe567"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
