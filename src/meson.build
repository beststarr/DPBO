gtk_app_sources = [
  'main.vala',
  'window.vala',
  'application.vala',
  'register.vala',
  'catatan.vala',
  'dashboard.vala',
  'menu.vala',
]

gtk_app_deps = [
  dependency('gtk4'),
]

gnome = import('gnome')

gtk_app_sources += gnome.compile_resources('gtk_app-resources',
  'gtk_app.gresource.xml',
  c_name: 'gtk_app'
)

executable('gtk_app', gtk_app_sources,
  vala_args: '--target-glib=2.50',  dependencies: gtk_app_deps,
  install: true,
)
