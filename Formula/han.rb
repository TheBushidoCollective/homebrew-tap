# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.27.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-darwin-arm64"
      sha256 "d60ca5b92155ab79e455c9606a016857cb9ec1e45819d02d921b50b86b1d035d"

      resource "native_module" do
        url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-native.darwin-arm64.node"
        sha256 "c1036c69e553a0ed92a8ea5821f5f74ddf14b592c5d6c2e5ae2c3b13f28df12e"
      end
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-darwin-x64"
      sha256 "ab8de8a60edb9b05439bb32c14b0b4351878d7ee5895c799f75102bcb0a4d07e"

      resource "native_module" do
        url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-native.darwin-x64.node"
        sha256 "ff861ccf2afa4b1a25757f4677e2dda5b145ef8a45bc219c37d765d72e4d6063"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-linux-arm64"
      sha256 "14e3ef52854276d5d18590e182258a971b6557a8dae6de2af87d0a0cebbc11e3"

      resource "native_module" do
        url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-native.linux-arm64-gnu.node"
        sha256 "521f2c158abe806d15b8d6d16057e4b6625ace858f1ea86a7ce2e5d017973765"
      end
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-linux-x64"
      sha256 "ad840288fde6804e6cdf21b17bf9ec2f1ca23bbe36547a81cbed0cffe3895f8f"

      resource "native_module" do
        url "https://github.com/TheBushidoCollective/han/releases/download/v1.27.2/han-native.linux-x64-gnu.node"
        sha256 "22b9be1d847197c457ba6c4adc6cccfb01c20c2daa358a7a4854be841a8a1c59"
      end
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
    resource("native_module").stage do
      bin.install Dir["*.node"].first => "han-native.node"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
