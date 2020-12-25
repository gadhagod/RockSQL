Gem::Specification.new do |specs|
    specs.name = 'RockSQL'
    specs.version = '1.1'
    specs.date = '2020-12-24'
    specs.summary = 'A complete Rockset SQL shell'
    specs.authors = ['Aarav Borthakur']
    specs.licenses = ['MIT']
    specs.executables = ['rsql']
    specs.add_runtime_dependency 'rockset', ['= 0.0.0']
    specs.add_runtime_dependency 'colorize', ['= 0.8.1']
    specs.add_runtime_dependency 'json', ['= 2.5.1']
    specs.homepage = 'http://gadhagod.github.io/RockSQL'
    specs.metadata = {'GitHub' => 'https://github.com/gadhagod/RockSQL'}
end