
project('load-di-model', 'c',
        version : '1.0',
        default_options : [ 'warning_level=3', 'buildtype=debugoptimized', 'c_std=c11' ]
)

server_app_sources  = [ files('main.c', 'open62541.c', 'ua_namespace_di.c', 'ua_types_di_generated.c'),
]

server_app_inc      = [ 
]

server_app_deps     = [ 
]

server_app_exe      = executable('server-app',
                          server_app_sources,
                          include_directories: server_app_inc,
                          dependencies:        server_app_deps)
