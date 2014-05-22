class Ruby193 < FPM::Cookery::Recipe
  description 'An interpreter of object-oriented scripting language Ruby'
  name        'ruby2.1'
  version     '1:2.1.2'
  revision    '1'
  homepage    'http://www.ruby-lang.org/'
  source      'http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz'
  sha256      'f22a6447811a81f3c808d1c2a5ce3b5f5f0955c68c9a749182feb425589e6635'
  arch        'x86_64'
  section     'interpreters'

  build_depends 'build-essential', 'autoconf', 'libreadline6-dev', 'bison',
                'zlib1g-dev', 'libssl-dev', 'libyaml-dev'
  depends       'libreadline6', 'zlib1g', 'openssl', 'libyaml-0-2'

  def build
    configure :prefix => '/usr/local', 'disable-install-doc' => true
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
