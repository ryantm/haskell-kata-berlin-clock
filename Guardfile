def run_specs
  system 'runhaskell -isrc -itest test/Spec.hs'
end

guard :shell do
  watch(%r{src/(.+)\.hs$})       { |m| run_specs }
  watch(%r{test/(.+)Spec\.hs$})  { |m| run_specs }
end
