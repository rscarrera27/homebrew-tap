class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.1.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "11177e17e3b5e6867a5aa82213c046c6483220f05bea201e7b03836c1043bb85"
  version "0.1.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
