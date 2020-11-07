blankon_upgrade_sources = [
  'main.vala',
  'window.vala',
]

blankon_upgrade_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

gnome = import('gnome')

blankon_upgrade_sources += gnome.compile_resources('blankon_upgrade-resources',
  'blankon_upgrade.gresource.xml',
  c_name: 'blankon_upgrade'
)

executable('blankon-upgrade', blankon_upgrade_sources,
  vala_args: '--target-glib=2.50',  dependencies: blankon_upgrade_deps,
  install: true,
)
