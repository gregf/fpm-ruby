class Ruby193 < FPM::Cookery::Recipe
  description 'An interpreter of object-oriented scripting language Ruby'
  name        'ruby1.9.3'
  version     '1:1.9.3.194'
  revision    '1'
  homepage    'http://www.ruby-lang.org/'
  source      'http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.bz2'
  sha256      'a9d1ea9eaea075c60048369a63b35b3b5a06a30aa214a3d990e0bb71212db8fa'
  arch        'x86_64'
  section     'interpreters'

  build_depends 'build-essential', 'autoconf', 'libreadline5-dev', 'bison',
                'zlib1g-dev', 'libssl-dev', 'libyaml-dev'
  depends       'libreadline5', 'zlib1g', 'openssl', 'libyaml-0-2'

  def build
    configure :prefix => '/usr/local', 'disable-install-doc' => true
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
