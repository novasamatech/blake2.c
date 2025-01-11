Pod::Spec.new do |spec|
    spec.name         = 'blake2.c'
    spec.version      = '0.1.0'
    spec.ios.deployment_target = "8.0"
    spec.osx.deployment_target = "10.10"
    spec.tvos.deployment_target = "9.0"
    spec.watchos.deployment_target = "2.0"
    spec.license      = { :type => 'Apache License 2.0', :file => 'LICENSE' }
    spec.summary      = 'blake2 module for web3swift'
    spec.homepage     = 'https://github.com/novasamatech/blake2.c'
    spec.author       = 'Novasama Technologies'
    spec.source       = { :git => 'https://github.com/novasamatech/blake2.c.git', :tag => String(spec.version) }
    spec.pod_target_xcconfig = {
    'OTHER_CFLAGS' => '-pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-shorten-64-to-32 -Wno-conditional-uninitialized -Wno-unused-function -Wno-long-long -Wno-overlength-strings -O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/blake2"'
  }
    spec.source_files = 'blake2/**/*.{c,h}'
    spec.public_header_files = 'blake2/include/*.h'
    spec.module_name = 'blake2'
end