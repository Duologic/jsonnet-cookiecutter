local test = import 'github.com/jsonnet-libs/testonnet/main.libsonnet';

local main = import '../main.libsonnet';

test.new(std.thisFile)
+ test.case.new(
  name='main is empty',
  test=test.expect.eq(
    actual=main.new(),
    expected={},
  )
)
