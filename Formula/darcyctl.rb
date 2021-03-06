# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Darcyctl < Formula
  desc "CLI for Darcy"
  homepage "https://meetdarcy.com"
  version "0.11.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.11.4/darcyctl-macos-amd64.tar.gz"
    sha256 "12c6160b5c238c7f22aa29e95be45f3171d50599f751ac7d971c6060c82edfac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.11.4/darcyctl-linux-amd64.tar.gz"
    sha256 "1122e78dd2ff2a677631975a30530e31420fe564655fa3a1a8e291cfcd0ec689"
  end

  def install
    bin.install "darcyctl"
  end

  test do
    system "#{bin}/darcyctl version"
  end
end
