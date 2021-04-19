# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Darcyctl < Formula
  desc "CLI for Darcy"
  homepage "https://meetdarcy.com"
  version "0.10.6"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.10.6/darcyctl-macos-amd64.tar.gz"
    sha256 "9085a05ed657b1f8d9028ce5198261d488ae9f4178d4b679f32b62392e881dfd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.10.6/darcyctl-linux-amd64.tar.gz"
    sha256 "cb719c4d2dd4b4243ef15d848e311eccaa3cd5698a7124c088eab925ed40254f"
  end

  def install
    bin.install "darcyctl"
  end

  test do
    system "#{bin}/darcyctl version"
  end
end
