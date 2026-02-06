rstudioapi::terminalExecute("bundle exec jekyll serve --livereload")
Sys.sleep(30)
browseURL("http://127.0.0.1:4000/")
