blankon_upgrade_sources = [
  'main.vala',
  'window.vala',
]

blankon_upgrade_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

executable('blankon-upgrade', blankon_upgrade_sources,
  vala_args: '--target-glib=2.50',  dependencies: blankon_upgrade_deps,
  install: true,
)
