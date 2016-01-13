clearing :on
notification :off

guard :minitest, { cli: '-p -v', autorun: false, all_on_start: true, include: ['lib'] } do
  watch(%r{^test/(.*)\/?test_(.*)\.rb$})
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { 'test' }
  watch(%r{^test/test_helper\.rb$})      { 'test' }
end
