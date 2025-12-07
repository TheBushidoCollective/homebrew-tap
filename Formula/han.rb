# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.51.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.1/han-darwin-arm64"
      sha256 "5620a26cb5692704673d1d4753324af9fe4a1689c42f99b3609ec12d545c8282"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.1/han-darwin-x64"
      sha256 "069c2a2f46a57e71052fbb7024fbeaf38b071631cb2b78b88f37853b8e23e803"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.1/han-linux-arm64"
      sha256 "f84416c995d969b8bb6cf298af7301e3ccdcf5c961ef7013b041becf714868e5"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.1/han-linux-x64"
      sha256 "f16b90625f7a8469d0f771ce19450e447055c94dd721dd9f553deb51472bd8c8"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
