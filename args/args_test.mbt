///|
test "argument parsing copies temporary unicode input" {
  @args.setup([
    "demo", "name=月兔", "enabled", "width=1280", "quoted='hello world'",
  ])
  assert_true(@args.isvalid())
  assert_eq(@args.value("name"), "月兔")
  assert_true(@args.boolean("enabled"))
  assert_true(@args.equals("width", "1280"))
  assert_eq(@args.value_def("missing", "fallback"), "fallback")
  assert_eq(@args.value("quoted"), "hello world")
  assert_true(@args.exists("name"))
  let name = @args.value_at(@args.find("name"))
  @args.shutdown()
  assert_eq(name, "月兔")
  assert_true(!@args.isvalid())
}
