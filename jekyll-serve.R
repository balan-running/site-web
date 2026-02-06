rstudioapi::terminalExecute("bundle exec jekyll serve --livereload", show = FALSE)
Sys.sleep(10)
browseURL("http://127.0.0.1:4000/")
