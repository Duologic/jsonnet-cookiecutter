local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.new(
    name='jsonnet-cookiecutter',
    url='github.com/Duologic/jsonnet-cookiecutter',
    help=|||
      Quick and dirty cookiecutter for jsonnet libraries.
    |||,
    filename='main.libsonnet',  // main entrypoint
    version='main',  // main branch name
  ),

  '#new': d.func.new(
    help='`new` initiates a new instance of this library.',
    args=[],
  ),
  new(): {},
}
